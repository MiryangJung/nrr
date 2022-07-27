import StaticRes from "src/Static.bs";

export default function Static(props) {
  return <StaticRes {...props} />;
}

export { getStaticProps } from "src/Static.bs";

