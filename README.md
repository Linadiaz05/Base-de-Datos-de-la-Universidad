# 📚 Proyecto Lina - Base de Datos Universitaria

Este proyecto contiene la estructura y datos iniciales de una base de datos diseñada para gestionar una universidad. Está desarrollada en MySQL/MariaDB y contempla distintas entidades académicas como estudiantes, profesores, asignaturas, facultades, programas, entre otros.

---

## 🏗️ Estructura de la Base de Datos

La base de datos contiene las siguientes tablas:

### 📋 1. `Alumnos`
- **Llave primaria**: `id_Alumno`
- **Llaves foráneas**:
  - `id_Programa` → `Programas_Academicos.id_Programa`
  - `id_Estado` → `Estados_Estudiante.id_Estado`
- **Descripción**: Almacena los datos personales, académicos y de contacto de los estudiantes.

### 👨‍🏫 2. `Profesores`
- **Llave primaria**: `id_Profesores`
- **Llave foránea**:
  - `id_Facultad` → `Facultades.id_Facultad`
- **Descripción**: Información del personal docente, incluyendo datos de contacto, especialidad, tipo de contrato y la facultad a la que pertenecen.

### 🧑‍💼 3. `Administrativos`
- **Llave primaria**: `id_Administrativo`
- **Llave foránea**:
  - `id_Facultad` → `Facultades.id_Facultad`
- **Descripción**: Personal administrativo de la universidad con información laboral y de contacto.

### 🏫 4. `Facultades`
- **Llave primaria**: `id_Facultad`
- **Descripción**: Lista de facultades existentes en la universidad.

### 📈 5. `Departamentos`
- **Llave primaria**: `id_Departamento`
- **Descripción**: Lista de departamentos académicos asociados a facultades.

### 🎓 6. `Programas_Academicos`
- **Llave primaria**: `id_Programa`
- **Descripción**: Contiene los programas académicos ofrecidos (pregrado, postgrado, etc.) junto con su nivel, ciudad y costo.

### ✅ 7. `Estados_Estudiante`
- **Llave primaria**: `id_Estado`
- **Descripción**: Estados posibles de un estudiante (activo, inactivo, graduado, en espera, etc.)

### 📚 8. `Asignaturas`
- **Llave primaria**: `id_Asignatura`
- **Descripción**: Lista de asignaturas, sus créditos, semestre y si son obligatorias o no.

### 🔁 9. `Asignaturas_Profesores`
- **Llave primaria compuesta**: `id_Asignatura`, `id_Profesores`
- **Llaves foráneas**:
  - `id_Asignatura` → `Asignaturas.id_Asignatura`
  - `id_Profesores` → `Profesores.id_Profesores`
- **Descripción**: Relación N:N entre profesores y asignaturas que imparten.

### 📝 10. `Matricula_Estudiante`
- **Llave primaria compuesta**: `id_Alumno`, `id_Asignatura`
- **Llaves foráneas**:
  - `id_Alumno` → `Alumnos.id_Alumno`
  - `id_Asignatura` → `Asignaturas.id_Asignatura`
- **Descripción**: Registro de matrículas de los estudiantes en asignaturas, incluyendo nota final y semestre.

---

## 🔗 Relaciones Clave

- **Un Alumno** pertenece a **un Programa Académico** y tiene **un Estado**.
- **Un Profesor** pertenece a **una Facultad**.
- **Un Administrativo** trabaja en **una Facultad**.
- **Una Asignatura** puede ser dictada por **varios Profesores**, y un Profesor puede dictar **varias Asignaturas** (`Asignaturas_Profesores`).
- **Un Estudiante** puede matricularse en **varias Asignaturas**, y una Asignatura puede tener **muchos Estudiantes** (`Matricula_Estudiante`).

---

## 🚀 Cómo usar

1. Importa el archivo SQL en tu gestor de base de datos MySQL/MariaDB.
2. Explora las tablas y relaciones usando consultas SQL.
3. Puedes usar herramientas como **MySQL Workbench**, **DBeaver** o **phpMyAdmin** para visualizar gráficamente las relaciones.

---

## ✍️ Autor

Proyecto académico: **Proyecto Lina**  
Desarrollado con 💙 en MySQL

---

## 🗃️ Licencia

MIT © [Tu Nombre o Institución]

