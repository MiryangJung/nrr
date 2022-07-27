type props = {data: string}

let default = (props: props) => {
  <>
    <h1> {`getServerSideProps & data-driven-dependencies`->React.string} </h1>
    <h2> {props.data->React.string} </h2>
  </>
}

let getServerSideProps = _ctx => {
  Js.Promise.resolve({"props": {"data": "WIP"}})
}
