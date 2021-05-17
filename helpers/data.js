exports.columns = async (key) => {
	let data = ``
	for (i = 0; i < key.length; i++) {
		data += `"${key[i]}",`
	}
	return await data.slice(0, -1)
}

exports.values = async (val) => {
	let data = ``
	for (i = 0; i < val.length; i++) {
		data += `'${val[i]}',`
	}
	return await data.slice(0, -1)
}

exports.update = async (key, val) => {
	let data = ``
	for (i = 0; i < key.length; i++) {
		data += `"${key[i]}"='${val[i]}',`
	}
	return await data.slice(0, -1)
}