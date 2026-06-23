update users.permissions
set name = 'Xem câu hỏi và câu trả lời'
where code = 'd_internal_answer_view';

update users.permissions
set name = 'Xem câu hỏi và câu trả lời'
where code = 'd_external_answer_view';

update users.permissions
set code = 'd_internal_question_answer_view'
where code = 'd_internal_answer_view';

update users.permissions
set code = 'd_external_question_answer_view'
where code = 'd_external_answer_view';


