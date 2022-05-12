var pool = require('./bd');
/*list*/
async function getNovedades(){
        var query ='select * from novedades';
        var rows = await pool.query(query);
        return rows;
}

/*insert*/
async function insertNovedades(obj){
    try{
        var query ='insert into novedades set?';
        var rows = await pool.query(query,[obj]);
        return rows;
    }catch (error) {
            console.log(error);
            throw error;
        }
}

/*delete*/
async function deleteNovedadesById(id){
    var query ='delete from novedades where id=?';
    var rows = await pool.query(query,[id]);
    return rows;
}

/*update > traer una novedad por id*/
async function getNovedadById(id){
    var query ='select * from novedades where id = ?';
    var rows = await pool.query(query,[id]);
    return rows [0];
}

/*para modificar UPDATE de los datos*/
async function modificarNovedadById(obj,id){
    try{
        var query ='update novedades set? where id=?';
        var rows = await pool.query(query,[obj,id]);
        return rows;
    }catch (error) {
            throw error;
        }
}


module.exports = {getNovedades, insertNovedades, deleteNovedadesById, modificarNovedadById, getNovedadById}