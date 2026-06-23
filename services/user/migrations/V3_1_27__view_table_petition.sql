create view users.petition_with_approval as
select p.*,
       ar.receiver_user_ids                     approval_user_ids,
       ar.receiver_organizational_structure_ids approval_department_ids,
       ar.id                                    approval_request_id
from users.petitions p
         left join setting.approval_requests ar
                   on ar.approval_id = p.approval_id and ar.type = lower(p.type) and ar.object_id = p.id and
                      ar.state != 'CANCELED' where p.is_deleted = false