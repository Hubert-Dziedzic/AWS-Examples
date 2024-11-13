

## Create bucket
```sh
aws s3 mb s3://prefixes-example-ab-45342
```

## Create folder
```sh
aws s3api put-object --bucket="prefixes-example-ab-45342" --key="hello/"
```

## Create many folders
```sh
aws s3api put-object --bucket="prefixes-example-ab-45342" --key="Lorem/ipsum/dolor/sit/amet/consectetur/adipiscing/elit/Suspendisse/id/turpis/nec/dolor/cursus/placerat/Donec/in/laoreet/tortor/Pellentesque/pulvinar/nisl/enim/sed/ullamcorper/arcu/iaculis/sit/amet/Sed/in/neque/a/nisl/porta/porta/Donec/pharetra/aliquet/diam/in/cursus/lectus/efficitur/ac/Donec/a/accumsan/leo/ac/hendrerit/enim/Quisque/congue/elit/vel/finibus/pellentesque/Suspendisse/a/elit/enim/Proin/consequat/nunc/erat/vel/ultrices/lacus/semper/id/Maecenas/tellus/ante/vehicula/ut/nisi/eu/placerat/luctus/tortorUt/maximus/risus/at/augue/maximus/tincidunt/Aliquam/sollicitudin/enim/a/tincidunt/tincidunt/nulla/ex/facilisis/massa/quis/aliquet/nulla/mi/eget/odio/Cras/in/orci/accumsan/fringilla/justo/non/fermentum/lacus/Sed/non/luctus/massa/Donec/quis/ullamcorper/orci/dictum/gravida/turpis/Vestibulum/ante/ipsum/primis/in/faucibus/orci/luctus/et/ultrices/posuere/cubilia/curae;/Ut/quis/dui/eget/ante/venenatis/tristique/Aliquam/commodo/tortor/ut/feugiat/rhoncus/Donec/id/malesuada/purus/amet/Aliquam"
```

## Try break the 1024 bytes limit
```sh
aws s3api put-object --bucket="prefixes-example-ab-45342" --key="Lorem/ipsum/dolor/sit/amet/consectetur/adipiscing/elit/Suspendisse/id/turpis/nec/dolor/cursus/placerat/Donec/in/laoreet/tortor/Pellentesque/pulvinar/nisl/enim/sed/ullamcorper/arcu/iaculis/sit/amet/Sed/in/neque/a/nisl/porta/porta/Donec/pharetra/aliquet/diam/in/cursus/lectus/efficitur/ac/Donec/a/accumsan/leo/ac/hendrerit/enim/Quisque/congue/elit/vel/finibus/pellentesque/Suspendisse/a/elit/enim/Proin/consequat/nunc/erat/vel/ultrices/lacus/semper/id/Maecenas/tellus/ante/vehicula/ut/nisi/eu/placerat/luctus/tortorUt/maximus/risus/at/augue/maximus/tincidunt/Aliquam/sollicitudin/enim/a/tincidunt/tincidunt/nulla/ex/facilisis/massa/quis/aliquet/nulla/mi/eget/odio/Cras/in/orci/accumsan/fringilla/justo/non/fermentum/lacus/Sed/non/luctus/massa/Donec/quis/ullamcorper/orci/dictum/gravida/turpis/Vestibulum/ante/ipsum/primis/in/faucibus/orci/luctus/et/ultrices/posuere/cubilia/curae;/Ut/quis/dui/eget/ante/venenatis/tristique/Aliquam/commodo/tortor/ut/feugiat/rhoncus/Donec/id/malesuada/purus/amet/Aliquam/amet/Aliquam/amet/Aliquam/amet/Aliquam/amet/Aliquam/amet/Aliquam/amet/Aliquam/hello.txt" --body="hello.txt"
```