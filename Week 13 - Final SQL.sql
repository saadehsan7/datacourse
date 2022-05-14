select course.coursename, module.modulename 
from uni.module left join uni.course
on course.courseid = module.courseid
;
select student.*, application.applicationid 
from uni.student left join uni.application
on student.studentid = application.studentid
;
select schedule.classid, a.mxdate, schedule.feedbackscore
from uni.schedule inner join
(select classid, max(cdate) mxdate
from uni.schedule
group by classid) a
on a.classid = schedule.classid and schedule.cdate = a.mxdate
