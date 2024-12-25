CREATE LOGIN test_login WITH PASSWORD = 'test123';

CREATE USER test_user FOR LOGIN test_login

GRANT SELECT ON employee_details TO test_user

-- Update user password
ALTER LOGIN test_login WITH PASSWORD = 'newpassword123';

-- Delete user
DROP USER test_user;

-- Revoke access
REVOKE SELECT ON employee_details FROM test_user;

-- Grant insert access
GRANT INSERT ON employee_details TO test_user;

-- Update access to include update permission
GRANT UPDATE ON employee_details TO test_user;

-- Disable login
ALTER LOGIN test_login DISABLE;

-- Enable login
ALTER LOGIN test_login ENABLE;

-- Rename login
ALTER LOGIN test_login WITH NAME = new_test_login;

-- Rename user
ALTER USER test_user WITH NAME = new_test_user;

-- Deny delete access
DENY DELETE ON employee_details TO test_user;

-- Grant execute access
GRANT EXECUTE ON employee_details TO test_user;