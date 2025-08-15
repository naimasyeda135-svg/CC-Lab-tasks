#include <stdio.h>

int main()
{
    int marks;

    printf("Enter your marks (0 - 100): ");
    scanf("%d", &marks);

    if (marks < 0 || marks > 100)
    {
        printf("Invalid marks. Please enter a value between 0 and 100.\n");
    }
    else
    {
        if (marks >= 80)
        {
            printf("Grade: A+\n");
        }
        else if (marks >= 75)
        {
            printf("Grade: A\n");
        }
        else if (marks >= 70)
        {
            printf("Grade: A-\n");
        }
        else if (marks >= 65)
        {
            printf("Grade: B+\n");
        }
        else if (marks >= 60)
        {
            printf("Grade: B\n");
        }
        else if (marks >= 55)
        {
            printf("Grade: B-\n");
        }
        else if (marks >= 50)
        {
            printf("Grade: C+\n");
        }
        else if (marks >= 45)
        {
            printf("Grade: C\n");
        }
        else if (marks >= 40)
        {
            printf("Grade: D\n");
        }
        else
        {
            printf("Grade: F\n");
        }
    }

    return 0;
}
