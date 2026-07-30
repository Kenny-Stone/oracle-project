INSERT INTO "User" (username, password_hash, email, role) VALUES ('admin', FUNC_HASH_PASSWORD('AdminPass123!'), 'admin@atu.edu.gh', 'ADMIN');
INSERT INTO "User" (username, password_hash, email, role) VALUES ('src_organizer', FUNC_HASH_PASSWORD('SrcPass123!'), 'src@atu.edu.gh', 'ORGANIZER');
INSERT INTO "User" (username, password_hash, email, role) VALUES ('engineering_dept', FUNC_HASH_PASSWORD('EngPass123!'), 'engineering@atu.edu.gh', 'ORGANIZER');
INSERT INTO "User" (username, password_hash, email, role) VALUES ('kofi_mensah', FUNC_HASH_PASSWORD('UserPass123!'), 'kofi.mensah@student.atu.edu.gh', 'ATTENDEE');
INSERT INTO "User" (username, password_hash, email, role) VALUES ('ama_osei', FUNC_HASH_PASSWORD('UserPass123!'), 'ama.osei@student.atu.edu.gh', 'ATTENDEE');
INSERT INTO "User" (username, password_hash, email, role) VALUES ('kwame_appiah', FUNC_HASH_PASSWORD('UserPass123!'), 'kwame.appiah@student.atu.edu.gh', 'ATTENDEE');
INSERT INTO "User" (username, password_hash, email, role) VALUES ('abena_boateng', FUNC_HASH_PASSWORD('UserPass123!'), 'abena.boateng@student.atu.edu.gh', 'ATTENDEE');
INSERT INTO "User" (username, password_hash, email, role) VALUES ('yaw_owusu', FUNC_HASH_PASSWORD('UserPass123!'), 'yaw.owusu@student.atu.edu.gh', 'ATTENDEE');
INSERT INTO "User" (username, password_hash, email, role) VALUES ('akosua_agyeman', FUNC_HASH_PASSWORD('UserPass123!'), 'akosua.a@student.atu.edu.gh', 'ATTENDEE');
INSERT INTO "User" (username, password_hash, email, role) VALUES ('kojo_frimpong', FUNC_HASH_PASSWORD('UserPass123!'), 'kojo.f@student.atu.edu.gh', 'ATTENDEE');
INSERT INTO "User" (username, password_hash, email, role) VALUES ('esi_darko', FUNC_HASH_PASSWORD('UserPass123!'), 'esi.darko@student.atu.edu.gh', 'ATTENDEE');
INSERT INTO "User" (username, password_hash, email, role) VALUES ('kwaku_nkrumah', FUNC_HASH_PASSWORD('UserPass123!'), 'kwaku.n@student.atu.edu.gh', 'ATTENDEE');
INSERT INTO "User" (username, password_hash, email, role) VALUES ('adwoa_asare', FUNC_HASH_PASSWORD('UserPass123!'), 'adwoa.a@student.atu.edu.gh', 'ATTENDEE');
INSERT INTO "User" (username, password_hash, email, role) VALUES ('fiifi_baidoo', FUNC_HASH_PASSWORD('UserPass123!'), 'fiifi.b@student.atu.edu.gh', 'ATTENDEE');
INSERT INTO "User" (username, password_hash, email, role) VALUES ('yaa_kwarteng', FUNC_HASH_PASSWORD('UserPass123!'), 'yaa.k@student.atu.edu.gh', 'ATTENDEE');
INSERT INTO "User" (username, password_hash, email, role) VALUES ('kwabena_taylor', FUNC_HASH_PASSWORD('UserPass123!'), 'kwabena.t@student.atu.edu.gh', 'ATTENDEE');
INSERT INTO "User" (username, password_hash, email, role) VALUES ('akua_badu', FUNC_HASH_PASSWORD('UserPass123!'), 'akua.b@student.atu.edu.gh', 'ATTENDEE');
INSERT INTO "User" (username, password_hash, email, role) VALUES ('kofi_addo', FUNC_HASH_PASSWORD('UserPass123!'), 'kofi.addo@student.atu.edu.gh', 'ATTENDEE');

COMMIT;


INSERT INTO EVENT (title, location, event_date, capacity) VALUES ('ATU Engineering & Tech Expo 2026', 'Main Auditorium', TO_DATE('2026-08-15','YYYY-MM-DD'), 200);
INSERT INTO EVENT (title, location, event_date, capacity) VALUES ('Database & AI Hackathon', 'Computer Lab 3', TO_DATE('2026-08-20','YYYY-MM-DD'), 100);
INSERT INTO EVENT (title, location, event_date, capacity) VALUES ('Annual SRC Campus Music Concert', 'Sports Complex', TO_DATE('2026-09-01','YYYY-MM-DD'), 500);
INSERT INTO EVENT (title, location, event_date, capacity) VALUES ('Freshers Orientation Night', 'Great Hall', TO_DATE('2026-09-05','YYYY-MM-DD'), 300);
INSERT INTO EVENT (title, location, event_date, capacity) VALUES ('Campus Inter-Faculty Games', 'ATU Sports Field', TO_DATE('2026-09-12','YYYY-MM-DD'), 400);
INSERT INTO EVENT (title, location, event_date, capacity) VALUES ('Entrepreneurship Summit', 'Conference Center', TO_DATE('2026-09-18','YYYY-MM-DD'), 150);
INSERT INTO EVENT (title, location, event_date, capacity) VALUES ('Cybersecurity Forum', 'Seminar Room B', TO_DATE('2026-09-25','YYYY-MM-DD'), 120);
INSERT INTO EVENT (title, location, event_date, capacity) VALUES ('ATU Fashion & Creative Arts Show', 'Main Quadrangle', TO_DATE('2026-10-02','YYYY-MM-DD'), 250);
INSERT INTO EVENT (title, location, event_date, capacity) VALUES ('Data Analytics Career Fair', 'Library Room 1', TO_DATE('2026-10-10','YYYY-MM-DD'), 180);
INSERT INTO EVENT (title, location, event_date, capacity) VALUES ('Alumni Networking Gala', 'Executive Dining Hall', TO_DATE('2026-10-24','YYYY-MM-DD'), 100);

COMMIT;


INSERT INTO TICKET (event_id, type, price) VALUES ((SELECT event_id FROM EVENT WHERE title = 'ATU Engineering & Tech Expo 2026'), 'Regular', 30);
INSERT INTO TICKET (event_id, type, price) VALUES ((SELECT event_id FROM EVENT WHERE title = 'ATU Engineering & Tech Expo 2026'), 'VIP', 60);
INSERT INTO TICKET (event_id, type, price) VALUES ((SELECT event_id FROM EVENT WHERE title = 'Database & AI Hackathon'), 'Standard', 20);
INSERT INTO TICKET (event_id, type, price) VALUES ((SELECT event_id FROM EVENT WHERE title = 'Annual SRC Campus Music Concert'), 'General Admission', 50);
INSERT INTO TICKET (event_id, type, price) VALUES ((SELECT event_id FROM EVENT WHERE title = 'Annual SRC Campus Music Concert'), 'VIP Front Stage', 100);
INSERT INTO TICKET (event_id, type, price) VALUES ((SELECT event_id FROM EVENT WHERE title = 'Freshers Orientation Night'), 'Free Entry', 0);
INSERT INTO TICKET (event_id, type, price) VALUES ((SELECT event_id FROM EVENT WHERE title = 'Campus Inter-Faculty Games'), 'Pass', 15);
INSERT INTO TICKET (event_id, type, price) VALUES ((SELECT event_id FROM EVENT WHERE title = 'Entrepreneurship Summit'), 'Delegate', 25);
INSERT INTO TICKET (event_id, type, price) VALUES ((SELECT event_id FROM EVENT WHERE title = 'Cybersecurity Forum'), 'Participant', 35);
INSERT INTO TICKET (event_id, type, price) VALUES ((SELECT event_id FROM EVENT WHERE title = 'ATU Fashion & Creative Arts Show'), 'Regular', 40);
INSERT INTO TICKET (event_id, type, price) VALUES ((SELECT event_id FROM EVENT WHERE title = 'Data Analytics Career Fair'), 'Student Ticket', 10);
INSERT INTO TICKET (event_id, type, price) VALUES ((SELECT event_id FROM EVENT WHERE title = 'Alumni Networking Gala'), 'Exclusive', 100);

COMMIT;


DECLARE
    TYPE t_user_id IS TABLE OF NUMBER;
    TYPE t_ticket_rec IS RECORD (
        ticket_id NUMBER,
        price NUMBER
    );
    TYPE t_ticket_list IS TABLE OF t_ticket_rec;

    v_users   t_user_id;
    v_tickets t_ticket_list;
    v_booking_id NUMBER;
    v_user_id    NUMBER;
    v_ticket     t_ticket_rec;
    v_qty        NUMBER;
    v_amount     NUMBER;
BEGIN
    SELECT user_id BULK COLLECT INTO v_users FROM "User" WHERE role = 'ATTENDEE';
    SELECT ticket_id, price BULK COLLECT INTO v_tickets FROM TICKET;

    FOR i IN 1..105 LOOP
        v_user_id := v_users(MOD(i - 1, v_users.COUNT) + 1);
        v_ticket  := v_tickets(MOD(i - 1, v_tickets.COUNT) + 1);
        v_qty     := MOD(i, 3) + 1;
        v_amount  := v_ticket.price * v_qty;

        INSERT INTO BOOKING (user_id, ticket_id, quantity)
        VALUES (v_user_id, v_ticket.ticket_id, v_qty)
        RETURNING booking_id INTO v_booking_id;

        INSERT INTO PAYMENT (booking_id, amount, Payment_date)
        VALUES (v_booking_id, v_amount, SYSDATE - MOD(i, 15));
    END LOOP;

    COMMIT;
END;
/