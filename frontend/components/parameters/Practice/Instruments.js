import BaseDataTable from "../BaseDataTable";
import React from "react";
import swal from "sweetalert2";
import {csrfToken} from "../../utils";

export default class Instruments extends BaseDataTable
{
    constructor(props)
    {
        super(props);

        this.state.columns = [
            {
                Header: "#",
                accessor: "id",
                width: 75,
            },
            {
                id: "name",
                Header: "Nom",
                accessor: d => d.label,
            },
            {
                id: "active",
                Header: "Actif ?",
                accessor: d => d.active,
                Cell: props => <p>{props.original.active ? "Oui" : "Non"}</p>
            },
            {
                id: "actions",
                Header: "Actions",
                Cell: props => {
                    return (
                        <div className="btn-wrapper">
                            <a className="btn-sm btn-primary m-r-sm" href={'/instruments/' + props.original.id + "/edit"}>
                                <i className="fas fa-edit"/>
                            </a>

                            <a className="btn-sm btn-warning" onClick={() => this.deleteStatus(props.original)}>
                                <i className="fas fa-trash"/>
                            </a>
                        </div>
                    );
                },
                sortable: false,
                filterable: false,
            },
        ];

        this.deleteStatus = this.deleteStatus.bind(this);
    }

    deleteStatus(status)
    {
        swal({
            title: "Voulez-vous vraiment supprimer l'instrument '" + status.label + "' ?",
            type: "warning",
            showCancelButton: true,
            cancelButtonText: "non",
            confirmButtonText: 'oui'
        }).then(res =>
        {
            if(res.value)
            {
                fetch(`/instruments/${status.id}`,
                    {
                        method: "DELETE",
                        credentials: "same-origin",
                        headers: {
                            "X-CSRF-Token": csrfToken,
                            "Content-Type": "application/json",
                            Accept: "application/json",
                        }
                    })
                    .then(result =>
                    {
                        if(result.status === 200)
                        {
                            this.fetchData(this.state.tableState)
                        }
                        else
                        {
                            result.text().then(text =>
                            {
                                swal({
                                    title: "Erreur",
                                    type: "error",
                                    text: text
                                })
                            })
                        }
                    })
            }
        });
    }
}