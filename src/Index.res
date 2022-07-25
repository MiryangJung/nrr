module Query = %relay(`
  query IndexQuery {
    ...Tickets_query
  }
`)

let default = () => {
  let query = Query.use(~variables=(), ())
  <React.Suspense fallback={<div> {React.string("Loading...")} </div>}>
    <Tickets queryRef=query.fragmentRefs />
  </React.Suspense>
}
