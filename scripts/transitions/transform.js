import transformSource from './transform-source.js'

export default (filename, glsl, path) => {
  const transition = transformSource(filename, glsl)
  return {
    data: {
      transition: transition.data,
    },
    errors: [...transition.errors]
  }
};
