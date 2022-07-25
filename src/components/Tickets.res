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
  let {data} = Fragment.usePagination(queryRef)
  <>
    {data.ticketsConnection
    ->Fragment.getConnectionNodes
    ->Belt.Array.map(ticket => <> {ticket.id->React.string} </>)
    ->React.array}
  </>
}
