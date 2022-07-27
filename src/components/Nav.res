@react.component
let make = () => {
  <nav>
    <ul>
      <li>
        <Next.Link href="/"> {`getServerSideProps & Query.fetchPromised`->React.string} </Next.Link>
      </li>
      <li>
        <Next.Link href="/static"> {`getStaticProps & Query.fetchPromised`->React.string} </Next.Link>
      </li>
    </ul>
  </nav>
}
