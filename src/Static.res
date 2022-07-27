module Query = %relay(`
  query StaticQuery {
    siteStatistics {
      currentVisitorsOnline
    }
  }
`)

type props = {data: StaticQuery_graphql.Types.response}

let default = (props: props) => {
  <>
    <h1> {`getStaticProps & Query.fetchPromised`->React.string} </h1>
    <h2> {props.data.siteStatistics.currentVisitorsOnline->Belt.Int.toString->React.string} </h2>
  </>
}

let getStaticProps = _ctx => {
  Query.fetchPromised(
    ~environment=RelayEnv.environment,
    ~variables=(),
    (),
  )->Js.Promise.then_(data => {
    Js.Promise.resolve({"props": {"data": data}})
  }, _)
}
