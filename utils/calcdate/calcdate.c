/****************************************************************************

Program:	calcdate

Synopsis:	calcdate yyyymmdd { -o [-]offset | -d yyyymmdd }

Purpose:	Calculate the target date when given an initial date and an
		offset in days, or the difference between two dates when
		given two dates.

Options:	There are two options as listed below.  One or the other must
		be entered.

		-o [-]offset	Allows the user to enter an offset (in days)
				and returns the initial date plus the offset.
				Negative offsets are permitted.

		-d yyyymmdd	Allows the user to enter a second date, and
				returns the difference between the two dates
				relative to the first date.

Author:		Gordon A. Runkle				ORI/Calculon
		...uunet!men2a!1solaria!gordon
                
Updated by Terry Chan <tpchan@attbi.com> to use 4 digit years 20020705

******************************************************************************/

#include <stdio.h>

#define REG	0
#define LEAP	1
#define NEG	0
#define POS	1

/* Version and usage information.  usage is used to print */
// char *version = "calcdate v2.01, 17 May 88, Gordon A. Runkle, ORI/Calculon\n";
char *version = "calcdate v2.1, 05 July 2002, Gordon A. Runkle, ORI/Calculon and Terry Chan\n";
// char *usage =   "Usage: calcdate mmddyy { -o [-]offset | -d mmddyy }\n\n";
char *usage =   "Usage: calcdate yyyymmdd { -o [-]offset | -d yyyymmdd }\n\n";
char *prog = "calcdate";

/* External variables for holding results of parsing of date values */
int month_1, day_1, year_1, month_2, day_2, year_2;

/* no_days[0] is for reg yrs, no_days[1] is for leap yrs */
int no_days[2][12] = 
		{
		{ 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31 },
		{ 31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31 }
		};



main(argc, argv)
int argc;
char *argv[];
{
extern char *version, *usage;


/* Test for the proper number of args. */
if (argc != 4)
	{
	fprintf(stderr, version);
	fprintf(stderr, usage);
	exit(-1);
	}

/* Tests first date for valid format and contents */
if (valid_date(argv[1], 1) != 0)
	exit(-1);		   /* The error message is in the function */

/* Test for an option flag in the second arg */
if (argv[2][0] != '-')
	{
	fprintf(stderr, usage);
	exit(-1);
	}

/* Make a decision based on the option */
if (argv[2][1] == 'o')
	{
	if (off_calc(argv[3]) != 0)
		exit(-1);
	}
else if (argv[2][1] == 'd')
	{
	if (valid_date(argv[3], 2) != 0)
		exit(-1);
	else
		{
		if (dates_calc() != 0)	/* no arg is needed - valid_date */
			exit (-1);	/* takes care of the dates */
		}
	}
else
	{
	fprintf(stderr, usage);
	exit(-1);
	}

return(0);
}


/***************************************/
valid_date(tst_date, date_flag)
char tst_date[];
int date_flag;
{
extern int month_1, day_1, year_1;
extern int month_2, day_2, year_2;
extern char *prog;

int i, leap_flag, month, day, year;


if (strlen(tst_date) != 8)
	{
	fprintf(stderr, "%s: date must be entered as yyyymmdd\n", prog);
	return(-1);
	}

for (i = 0; i < 8; i++)
	if (tst_date[i] < '0' || tst_date[i] > '9')
		{
		fprintf(stderr, "%s: date must be entered as yyyymmdd\n", prog);
		return(-1);
		}


sscanf(tst_date, "%4d%2d%2d", &year, &month, &day);

if (month > 12)
	{
	fprintf(stderr, "%s: invalid month %d\n", prog, month);
	return(-1);
	}

leap_flag = REG;
if (!(year % 4))
        {
        /* Added this test to cover 1900 is NOT a leap year while 2000 is a leap year */
        if (year % 100) 
            leap_flag = LEAP;
        else if (!(year % 400))
            leap_flag = LEAP;
        }

if (day > no_days[leap_flag][month - 1])
	{
	fprintf(stderr, "%s: invalid day %d\n", prog, day);
	return(-1);
	}

/* This determines where our carefully-checked values are stored */
if (date_flag == 1)
	{
	day_1 = day;
	month_1 = month;
	year_1 = year;
	}
else if (date_flag == 2)
	{
	day_2 = day;
	month_2 = month;
	year_2 = year;
	}
else
	{
	fprintf(stderr, "%s: unexpected error assigning date values\n", prog);
	return(-1);
	}

return(0);
}
		

/***************************************/
off_calc(offset)
char offset[];
{
extern int no_days[2][12];
extern int month_1, day_1, year_1;
extern char *prog;

int atoi();
int i_offset, n_month, n_day, n_year, month_bal;
int i, leap_flag;

char newdate[9];


/* This checks for a valid offset value.  Negative values are allowed
   and checked for.  It stops at the first null. */
for (i = 0; i < 4; i++)
	{
	if (offset[i] == '\0')
		break;

	if (i == 0 && offset[i] == '-')
		continue;

	if (offset[i] < '0' || offset[i] > '9')
		{
		fprintf(stderr, "%s: offset must be entered as an integer\n", prog);
		exit(-1);
		}
	}

i_offset = atoi(offset);

/* This is the beginning of the neat stuff.  I hope it works! */
/* leap year is when =>>  year % 4 == 0 but also need to test for % 100 and % 400 cases */
/* i.e. 1900 is NOT a leap year but 2000 is */

n_year = year_1;	/* the *_1 is used, as this is the value of the */
n_month = month_1;	/* first date entered */
n_day = day_1;

if (i_offset >= 0)
	{
	while (i_offset > 0)
		{
                leap_flag = REG;
                if (!(n_year % 4))
                    {
                    if (n_year % 100)
                        leap_flag = LEAP;
                    else if (!(n_year % 400))
                        leap_flag = LEAP;
                    }

		month_bal = no_days[leap_flag][n_month - 1] - n_day;

		if (i_offset > month_bal)
			{
			i_offset -= month_bal;
			n_month++;

			if (n_month > 12)
				{
				n_month = 1;
				n_year++;

				// if (n_year > 99)
				//	n_year = 0;
				}

			n_day = 0;
			}
		  else
			{
			n_day += i_offset;
			i_offset = 0;
			}
		}
	}
else
	{
	while (i_offset < 0)		/* this loop processes neg offsets */
		{
                leap_flag = REG;
                if (!(n_year % 4))
                    {
                    if (n_year % 100)
                        leap_flag = LEAP;
                    else if (!(n_year % 400))
                        leap_flag = LEAP;
                    }

		month_bal = n_day - 1;

		if (abs(i_offset) > month_bal)
			{
			i_offset += month_bal;
			n_month--;

			if (n_month < 1)
				{
				n_month = 12;
				n_year--;

				// if (n_year < 0)
				//	n_year = 99;
				}

			n_day = no_days[leap_flag][n_month - 1] + 1;
			}
		  else
			{
			n_day += i_offset;
			i_offset = 0;
			}
		}
	}

sprintf(newdate, "%4d%2d%2d", n_year, n_month, n_day);

for (i = 0; i < 9; i++)
	if (newdate[i] == ' ')
		newdate[i] = '0';

fprintf(stdout, "%s\n", newdate);

return(0);
}


/***************************************/
dates_calc()
{
extern int no_days[2][12];
extern int month_1, day_1, year_1, month_2, day_2, year_2;

int first_rec = 0, curr_offset = 0;
int leap_flag, sign_flag;
int start_day, start_month, start_year, end_day, end_month, end_year;


/****
	This section determines which date is later, so that the program
	may evaluate the earlier one first.  There is a flag set to indicate
	what sign the end result should have based on whether the first date
	entered is earlier or later than the second.
****/

/* set the default sign */
sign_flag = NEG;

if (year_1 < year_2)
	sign_flag = POS;
  else
	if (year_1 == year_2 && month_1 < month_2)
		sign_flag = POS;
	  else
		if (year_1 == year_2 && month_1 == month_2 && day_1 < day_2)
			sign_flag = POS;

/* This makes the earlier date be set to start_* */
if (sign_flag == POS)
	{
	start_day = day_1;
	start_month = month_1;
	start_year = year_1;
	end_day = day_2;
	end_month = month_2;
	end_year = year_2;
	}
  else
	{
	start_day = day_2;
	start_month = month_2;
	start_year = year_2;
	end_day = day_1;
	end_month = month_1;
	end_year = year_1;
	}

/* The calculations below keep incrementing curr_offset and start_* until
   start_* == end_*  */

for (;;)
	{
        leap_flag = REG;
        if (!(start_year % 4))
            {
            if (start_year % 100)
                leap_flag = LEAP;
            else if (!(start_year % 400))
                leap_flag = LEAP;
            }

	if (first_rec == 0)
		{
		/* This is for when the month and year start out the same, and 
		   the user just wants the days (ie.  051688 052688 */
		if (start_month == end_month && start_year == end_year)
			{
			curr_offset = end_day - start_day;
			break;
			}

		curr_offset = no_days[leap_flag][start_month - 1] - start_day;
		first_rec = 1;
		}
	  else if (start_month == end_month && start_year == end_year)
		{
		curr_offset += end_day;
		break;			/* This is the end of it */
		}
	  else
		curr_offset += no_days[leap_flag][start_month - 1];


	start_month++;

	if (start_month > 12)
		{
		start_month = 1;
		start_year++;

		// if (start_year > 99)
		//	start_year = 0;
		}
	}

if (sign_flag == NEG)
	curr_offset = -curr_offset;

fprintf(stdout, "%d\n", curr_offset);

return(0);
}
/* end of calcdate.c  -=gordon=- */


