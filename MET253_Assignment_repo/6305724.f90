PROGRAM test
IMPLICIT NONE 
!AGYIRAKWAH SAMUEL FOSU
!6305724
!UPDATED VERSION FROM INITAL ONE NAMED TEST_6305124.F90
INTEGER:: i
INTEGER ,DIMENSION(10) :: scores = (/ 85, 62, 45, 91, 38, 74, 55, 88, 61, 47 /)
    character(len=1) :: grade
    character(len=11) :: remark

    print *, "Student No. | Score | Grade | Remark"
    DO i = 1, 10
        if (scores(i) >= 80) then
            grade = 'A'
            remark = 'Distinction'
        else if (scores(i) >= 60) then
            grade = 'B'
            remark = 'Credit'
        else if (scores(i) >= 40) then
            grade = 'C'
            remark = 'Pass'
        else
            grade = 'F'
            remark = 'Fail'
        end if
        write(*, 100) i, scores(i), grade, remark
    END DO
100 format(I6, T13, "|", I5, T21, "|", T25, A1, T29, "| ", A)

end program test
