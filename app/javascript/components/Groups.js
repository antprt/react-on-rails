import { Table, message, Popconfirm } from "antd";
import React from "react";
import AddGroupModal from './AddGroupModal'

class Groups extends React.Component {
  columns = [
    {
      title: "Name",
      dataIndex: "name",
      key: "name",
    },
    {
      title: "Style",
      dataIndex: "style",
      key: "style",
    },
    {
      title: "Author",
      dataIndex: "author",
      key: "author",
    },
    {
      title: "Year",
      dataIndex: "year",
      key: "year",
    },
    {
      title: "",
      key: "action",
      render: (_text, record) => (
        <Popconfirm title="Are you sure to delete this item?" onConfirm={() => this.deleteGroup(record.id)} okText="Yes" cancelText="No">
          <a href="#" type="danger">
            Delete{" "}
          </a>
        </Popconfirm>
      ),
    },
  ];

  state = {
    groups: [],
  };

  componentDidMount() {
    this.loadGroups();
  }

  loadGroups = () => {
    const url = "api/v1/groups/index";
    fetch(url)
      .then((data) => {
        if (data.ok) {
          return data.json();
        }
        throw new Error("Network error.");
      })
      .then((data) => {
        data.forEach((group) => {
          const newEl = {
            key: group.id,
            id: group.id,
            name: group.name,
            style: group.style,
            author: group.author,
            year: group.year,
          };

          this.setState((prevState) => ({
            groups: [...prevState.groups, newEl],
          }));
        });
      })
      .catch((err) => message.error("Error: " + err));
  };

  reloadGroups = () => {
    this.setState({ groups: [] });
    this.loadGroups();
  };

  deleteGroup = (id) => {
    const url = `api/v1/groups/${id}`;

    fetch(url, {
      method: "delete",
    })
      .then((data) => {
        if (data.ok) {
          this.reloadGroups();
          return data.json();
        }
        throw new Error("Network error.");
      })
      .catch((err) => message.error("Error: " + err));
  };

  render() {
    return (
      <>
        <Table className="table-striped-rows" dataSource={this.state.groups} columns={this.columns} pagination={{ pageSize: 5 }} />

        <AddGroupModal reloadGroups={this.reloadGroups} />
      </>
    );
  }
}

export default Groups;
