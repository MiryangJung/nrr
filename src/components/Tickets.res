module Fragment = %relay(`
  fragment Tickets_query on Query
  @refetchable(queryName: "TicketsRefetchQuery")
  @argumentDefinitions(
    first: { type: "Int", defaultValue: 2 }
    after: { type: "String", defaultValue: "" }
  ) {
    ticketsConnection(first: $first, after: $after)
      @connection(key: "Tickets_ticketsConnection") {
      edges {
        node {
          id
        }
      }
    }
  }
`)

@react.component
let make = (~queryRef) => {
  let {data, hasNext, isLoadingNext, loadNext} = Fragment.usePagination(queryRef)
  <>
    <ul>
      {data.ticketsConnection
      ->Fragment.getConnectionNodes
      ->Belt.Array.map(ticket => <li key={ticket.id}> {ticket.id->React.string} </li>)
      ->React.array}
    </ul>
    {hasNext
      ? <button
          className="btn btn-gradient-primary font-weight-bold"
          id="add-task"
          onClick={_ => loadNext(~count=2, ()) |> ignore}
          disabled=isLoadingNext>
          {React.string("More")}
        </button>
      : React.null}
  </>
}
