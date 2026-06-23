delete from permission_groups where name in ('MARKETING - Lịch trình di chuyển');
delete from permissions where code in ('m_travel_schedules_create',
                                       'm_travel_schedules_update',
                                       'm_travel_schedules_delete',
                                       'm_travel_schedules_view');
