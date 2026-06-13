use course_tracker
feedback

db.feedback.insertMany([
{
student_id:1,
course_id:1,
rating:5,
review:"Excellent course"
},
{
student_id:2,
course_id:2,
rating:4,
review:"Good content"
},
{
student_id:3,
course_id:3,
rating:5,
review:"Very informative"
}
]);

db.feedback.createIndex(
{student_id:1}
);

db.feedback.createIndex(
{course_id:1}
);

mongodb_feedback.js