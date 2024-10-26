
CREATE TABLE user (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    password VARCHAR(255),
    role VARCHAR(50)
);

CREATE TABLE clients (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(20),
    address TEXT
);

CREATE TABLE projects (
    id INT AUTO_INCREMENT PRIMARY KEY,
    client_id INT,
    name VARCHAR(100),
    description TEXT,
    start_date DATE,
    end_date DATE,
    status VARCHAR(50),
    FOREIGN KEY (client_id) REFERENCES clients(id)
);

CREATE TABLE employees (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    position VARCHAR(100),
    salary DECIMAL(10, 2),
    hire_date DATE
);

CREATE TABLE materials (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    quantity INT,
    unit_price DECIMAL(10, 2),
    supplier VARCHAR(100),
    image VARCHAR(255)
);

CREATE TABLE tasks (
    id INT AUTO_INCREMENT PRIMARY KEY,
    project_id INT,
    description TEXT,
    assigned_to INT,
    status VARCHAR(50),
    due_date DATE,
    FOREIGN KEY (project_id) REFERENCES projects(id),
    FOREIGN KEY (assigned_to) REFERENCES employees(id)
);

CREATE TABLE invoices (
    id INT AUTO_INCREMENT PRIMARY KEY,
    project_id INT,
    amount DECIMAL(10, 2),
    issue_date DATE,
    due_date DATE,
    status VARCHAR(50),
    FOREIGN KEY (project_id) REFERENCES projects(id)
);

CREATE TABLE notifications (
    id INT AUTO_INCREMENT PRIMARY KEY,
    message TEXT,
    notification_type VARCHAR(50)
);

CREATE TABLE project_requests (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    request_date DATE,
    project_name VARCHAR(100),
    project_description TEXT,
    status VARCHAR(50),
    FOREIGN KEY (user_id) REFERENCES user(id)
);
