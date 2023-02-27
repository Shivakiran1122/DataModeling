
**Entities:**

**Patient:** stores patient information such as name, age, gender, medical history, contact information, etc.<br/>
**Doctor:** stores doctor information such as name, specialty, contact information, etc.<br/>
**Nurse:** stores nurse information such as name, shift, contact information, etc.<br/>
**Appointment:** stores appointment information such as appointment date and time, patient ID, doctor ID, etc.<br/>
**Medical record:** stores patient medical records such as diagnosis, treatment, prescription, lab test results, etc.<br/>
**Department:** stores department information such as department name, department head, etc.<br/>
**Ward:** stores ward information such as ward number, capacity, availability, etc.<br/>

**Attributes:**

**Patient:** patient ID (primary key), name, age, gender, medical history, contact information, etc.<br/>
**Doctor:** doctor ID (primary key), name, specialty, contact information, etc.<br/>
**Nurse:** nurse ID (primary key), name, shift, contact information, etc.<br/>
**Appointment:** appointment ID (primary key), appointment date and time, patient ID (foreign key), doctor ID (foreign key), etc.<br/>
**Medical record:** record ID (primary key), patient ID (foreign key), doctor ID (foreign key), diagnosis, treatment, prescription, lab test results, etc.<br/>
**Department:** department ID (primary key), department name, department head, etc.<br/>
**Ward:** ward ID (primary key), ward number, capacity, availability, etc.<br/>

**Relationships:**

**Patient-Doctor:** a patient can have multiple doctors and a doctor can have multiple patients. This is a many-to-many relationship and can be implemented using a junction table.<br/>
**Patient-Nurse:** a patient can have multiple nurses and a nurse can have multiple patients. This is a many-to-many relationship and can be implemented using a junction table.<br/>
**Patient-Appointment:** a patient can have multiple appointments and an appointment can have only one patient. This is a one-to-many relationship.<br/>
**Doctor-Appointment:** a doctor can have multiple appointments and an appointment can have only one doctor. This is a one-to-many relationship.<br/>
**Patient-Medical record:** a patient can have multiple medical records and a medical record can have only one patient. This is a one-to-many relationship.<br/>
**Doctor-Medical record:** a doctor can have multiple medical records and a medical record can have only one doctor. This is a one-to-many relationship.<br/>
**Department-Doctor:** a department can have multiple doctors and a doctor can be part of only one department. This is a one-to-many relationship.<br/>
**Ward-Patient:** a ward can have multiple patients and a patient can be in only one ward at a time. This is a one-to-many relationship.<br/>
