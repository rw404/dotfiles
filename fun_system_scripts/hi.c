#include <stdio.h>
#include <fcntl.h>
#include <unistd.h>
#include <time.h>
#include <wait.h>
#include <stdlib.h>
#include <string.h>

enum
{
    INVALID_HOUR_VALUE_1 = 0,
    INVALID_HOUR_VALUE_2 = 24,
    BAD_HOUR             = 1,
    FIRST_BORDER         = 11,
    SECOND_BORDER        = 16,
    THIRD_BORDER         = 20,
    CORRECT_RESULT       = 0,
    WAIT_OPTIONS         = 0
};

int
main(int argc, char **argv) 
{
    time_t current_time  = time(NULL);
    struct tm *loc_tm    = localtime(&current_time);
    
    pid_t son;
    int hour = loc_tm->tm_hour; 
    if (hour < INVALID_HOUR_VALUE_1 
            || hour >= INVALID_HOUR_VALUE_2) {
        //ERROR_CASE
        fprintf(stderr, "ERROR: Hour less than zero!\n");
        exit(BAD_HOUR);
    } else if (hour < FIRST_BORDER) {
        //SYSTEM_STATUS
        if(!(son = fork())) {
            execl("/usr/local/bin/pfetch", "pfetch", NULL);
            exit(CORRECT_RESULT);
        }
        waitpid(son, NULL, WAIT_OPTIONS);
    } else if (hour < SECOND_BORDER) {
        //ELFMAN
        if (!(son = fork())) {
            execl("/bin/colorscript", "colorscript", "-e", "elfman", NULL);
            exit(CORRECT_RESULT);
        }
        waitpid(son, NULL, WAIT_OPTIONS);
    } else if (hour < THIRD_BORDER) {
        //DNA
        if (!(son = fork())) {
            execl("/bin/colorscript", "colorscript", "-e", "dna", NULL);
            exit(CORRECT_RESULT);
        }
        waitpid(son, NULL, WAIT_OPTIONS);
    } else {
        //BATMAN
        if (!(son = fork())) {
            execl("/bin/colorscript", "colorscript", "-e", "thebat", NULL);
            exit(CORRECT_RESULT);
        }
        waitpid(son, NULL, WAIT_OPTIONS);
    }
    return 0;
}
