import React, { useState } from "react";
import swal from "sweetalert";
import { createTask } from "../service/TasksService";
import { Link } from "react-router-dom";
import { FaArrowLeft } from "react-icons/fa";

const AddTask = () => {

  const [formData, setFormData] = useState({

    taskName: "",
    description: "",
    priority: "",
    status: "pending"
  });
  const handleChange = (e) => {
    let name=e.target.name
    let value=e.target.value
    console.log(value.substring(value.length-1,value.length));
    if(name === "priority"){
      if(Number.parseInt(value) < 0){
        value="";
      }
    }
    setFormData({
      ...formData,
     [name]:value
    });
  };

  const handleSubmit = async (e) => {
    e.preventDefault();
    try {
      const res = await createTask(formData);
      const { message } = res.data;
      swal(message, "success");
      setFormData({
        taskName: "",
        description: "",
        priority: "",
      })
    } catch (err) {
      console.log(err)
    }

  };
  return (
    <div>
      <div className="flex justify-between m-10">
        <Link to="/user/task"> <FaArrowLeft className="" /></Link>
        <Link to={"/user/logout"} className="text-blue-600" > Logout </Link>
      </div>
      <div className="min-h-screen flex flex-col items-center justify-center">
        <h1 className="text-3xl font-bold mb-6">Add Task</h1>
        <form className="w-full max-w-sm" >
          <div className="mb-4">
            <label className="block text-gray-700 text-sm font-bold mb-2" htmlFor="name">
              Name
            </label>
            <input
              type="text"
              id="name"
              name="taskName"
              value={formData.taskName}
              onChange={handleChange}
              className="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
              required
            />
          </div>
          <div className="mb-4">
            <label className="block text-gray-700 text-sm font-bold mb-2" htmlFor="email">
              description
            </label>
            <textarea
              id="description"
              name="description"
              value={formData.description}
              onChange={handleChange}
              className="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
              required
            />
          </div>
          <div className="mb-6">
            <label className="block text-gray-700 text-sm font-bold mb-2" >
              priority
            </label>
            <input
              type="number"
              id="priority"
              name="priority"
              value={formData.priority}
              onChange={handleChange}
              className="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 mb-3 leading-tight focus:outline-none focus:shadow-outline"
              required
            />
          </div>
          <div className="flex items-center justify-between">
            <button
              type="submit"
              className="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded focus:outline-none focus:shadow-outline"
              onClick={handleSubmit}
            >
              Add Task
            </button>
          </div>
        </form>
      </div>
    </div>
  )
}
export default AddTask;