@react.component
let make = () => {
  <nav>
    <ul>
      <b> {`unstored w/ Query.fetchPromised`->React.string} </b>
      <li>
        <Next.Link href="/"> {`getServerSideProps`->React.string} </Next.Link>
      </li>
      <li>
        <Next.Link href="/static">
          {`getStaticProps`->React.string}
        </Next.Link>
      </li>
      <b> {`WIP : stored w/ data-driven-dependencies`->React.string} </b>
      <li>
        <Next.Link href="/ddp-ssr"> {`getServerSideProps`->React.string} </Next.Link>
      </li>
    </ul>
  </nav>
}
