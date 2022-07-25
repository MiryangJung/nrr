module Query = %relay(`
  query IndexQuery {
    ...Tickets_query
  }
`)

let default = () => {
  let query = Query.use(~variables=(), ())
  <Tickets queryRef=query.fragmentRefs />
}

// ---not work 1---
// type props = {preloadedQueries: IndexQuery_graphql.Types.response}

// let default = (props: props) => {
//   props.preloadedQueries->Js.log
//   <> </>
// }

// let getServerSideProps = _ctx => {
//   let props = {
//     preloadedQueries: Query.use(~variables=(), ()),
//   }
//   Js.Promise.resolve({"props": props})
// }

// ---not work 2---
// let default = () => {
//   let query = Query.use(~variables=(), ())
//   <React.Suspense fallback={<div> {React.string("Loading...")} </div>}>
//     <Tickets queryRef=query.fragmentRefs />
//   </React.Suspense>
// }
