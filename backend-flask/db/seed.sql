-- this file was manually created
INSERT INTO public.users (display_name, email, handle, cognito_user_id)
VALUES
  ('Razin Rangara', 'awsrazin+test@gmail.com', 'zinrangara' ,'MOCK'),
  ('Tester Zin', 'awsrazin+test1@gmail.com', 'testerzin' ,'MOCK'),
  ('Mocking Mocks', 'mockingdata1@gmail.com', 'mockuser' ,'MOCK');

INSERT INTO public.activities (user_uuid, message, expires_at)
VALUES
  (
    (SELECT uuid from public.users WHERE users.handle = 'testerzin' LIMIT 1),
    'This was imported as seed data!',
    current_timestamp + interval '10 day'
  )