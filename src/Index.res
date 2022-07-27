module Query = %relay(`
  query IndexQuery {
    siteStatistics {
      currentVisitorsOnline
    }
  }
`)

type props = {data: IndexQuery_graphql.Types.response}

let default = (props: props) => {
  <>
    <h1> {props.data.siteStatistics.currentVisitorsOnline->Belt.Int.toString->React.string} </h1>
  </>
}

let getServerSideProps = _ctx => {
  Query.fetchPromised(
    ~environment=RelayEnv.environment,
    ~variables=(),
    (),
  )->Js.Promise.then_(data => {
    Js.Promise.resolve({"props": {"data": data}})
  }, _)
}
