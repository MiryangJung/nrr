type pageProps

module PageComponent = {
  type t = React.component<pageProps>
}

type props = {
  @as("Component")
  component: PageComponent.t,
  pageProps: pageProps,
}

let default = (props: props): React.element => {
  let {component, pageProps} = props

  let content = React.createElement(component, pageProps)

  <RescriptRelay.Context.Provider environment=RelayEnv.environment>
    content
  </RescriptRelay.Context.Provider>
}
