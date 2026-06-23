drop
view users.petition_report;

create view users.petition_report as
select p.id                                     petition_id,
       p.enterprise_id,
       pt.id                                    petition_time_id,
       p.created_at,
       pt.from_time                             petition_at,
       p.approved_at,
       pt.user_id,
       pt.support_user_id,
       pt.shift_id,
       p.department_id,
       p.type,
       pt.petition_reason_id,
       pt.duration,
       pt.from_time,
       pt.to_time,
       pt.note,
       pt.status,
       ar.receiver_user_ids                     approval_user_ids,
       ar.receiver_organizational_structure_ids approval_department_ids,
       ar.id                                    approval_request_id
from users.petition_times pt
         join users.petitions p on p.id = pt.petition_id
         left join setting.approval_requests ar
                   on ar.approval_id = p.approval_id and ar.type = lower(p.type) and ar.object_id = p.id and
                      ar.state != 'CANCEL'