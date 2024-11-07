// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StudentData {
    // Structure to hold student details
    struct Student {
        uint id;
        string name;
        string course;
    }

    // Array to store students
    Student[] public students;

    // Function to add a new student
    function addStudent(uint _id, string memory _name, string memory _course) public {
        students.push(Student(_id, _name, _course));
    }

    // Function to get student details by index
    function getStudent(uint index) public view returns (uint, string memory, string memory) {
        require(index < students.length, "Student index out of range");
        Student memory student = students[index];
        return (student.id, student.name, student.course);
    }

    // Fallback function to handle incorrect function calls
    fallback() external payable {
        revert("Function does not exist!");
    }

    // Function to receive Ether
    receive() external payable {
        // Custom logic for receiving Ether can be added here
    }

    
}
