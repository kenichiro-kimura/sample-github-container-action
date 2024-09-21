#!/bin/bash
if [ -z "ID_OF_INPUT" ]
then
  echo "No id_of_input environment variable supplied"
  exit 1
fi
if [ -z "ID_OF_INPUT2" ]
then
  echo "No id_of_input2 environment variable supplied"
  exit 1
fi

echo "id_of_output=${ID_OF_INPUT}" >> "${GITHUB_OUTPUT}"
echo "id_of_output2=${ID_OF_INPUT2}" >> "${GITHUB_OUTPUT}"
echo "::add-mask::${ID_OF_INPUT2}" >> "${GITHUB_OUTPUT}"
cat "${GITHUB_OUTPUT}"
