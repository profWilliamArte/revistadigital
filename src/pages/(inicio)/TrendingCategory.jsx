import { useEffect, useState } from "react";
import { Dialog } from 'primereact/dialog';
const API = 'http://localhost/backendrd/api/videos/get/';
const API_CANALES = 'http://localhost/backendrd/api/canales/get/';
const TrendingCategory = ({c1, c2, c3, c4}) => {
    const [datos, setDatos] = useState([]);
    const [datosCaneles, setDatosCanales] = useState([]);

    const [visible, setVisible] = useState(false); // Estado para controlar la visibilidad del Dialog
    const [selectedVideoCode, setSelectedVideoCode] = useState(''); // Estado para almacenar el código del video seleccionado
  
    const getDatos = async () => {
        try {
            const response = await fetch(API);
            const data = await response.json();
            console.log(data);
            setDatos(data);
            //
            const response2 = await fetch(API_CANALES);
            const data2 = await response2.json();
            console.log(data2);
            setDatosCanales(data2);
        } catch (error) {
            console.error(error);
        }
    };

    useEffect(() => {
        getDatos();
    }, []);
 // Función para abrir el Dialog y establecer el código del video
 const openDialog = (codigo) => {
  setSelectedVideoCode(codigo);
  setVisible(true);
};

// Función para cerrar el Dialog
const closeDialog = () => {
  setVisible(false);
}
 

const getNombreCanal = (id) => {
  const canal = datosCaneles.find((item) => item.id === id); // Busca el canal con el ID proporcionado
  return canal ? canal.nombre : "Canal no encontrado"; // Retorna el nombre o un mensaje si no se encuentra
};
  return (
<section id="trending-category" className="trending-category section">
    <h4 className="section-title text-center">Inicio</h4>
  <div className="container" data-aos="fade-up" data-aos-delay={100}>
    <div className="container" data-aos="fade-up">
      <div className="row g-5">
        <div className="col-lg-4">

        {datos && datos.filter(item => item.idcanal === c1) // Filtra solo los videos con idcanal=1
               .slice(0, 2) // Limita a los primeros 3 videos
               .map((item) => (


          <div key={item.id} className="post-entry lg">
             <h4 className="text-center">
                {datosCaneles ? getNombreCanal(c1) : "No Encontrado"}
              </h4>
             <a onClick={() => openDialog(item.codigo)}>
                <img src={`https://img.youtube.com/vi/${item.codigo}/hqdefault.jpg`} alt className="img-fluid" />
              </a>     
              <div className="post-meta text-end">Fecha {item.fecha}</div>
              <h3 className="post-title">{item.titulo}</h3>
                <hr/>
          </div>

    ))}


        </div>
        <div className="col-lg-8">
          <div className="row g-5">
            <div className="col-lg-4 border-start custom-border">
                <p className="post-meta text-center">{datosCaneles ? getNombreCanal(c2) : "No Encontrado"}</p>
              <div className="post-entry">
              {datos && datos.filter(item => item.idcanal === c2) // Filtra solo los videos con idcanal=1
               .slice(0, 3) // Limita a los primeros 3 videos
               .map((item) => (
                  <div  className="post-entry" key={item.id}>
                      <a onClick={() => openDialog(item.codigo)}>
                        <img src={`https://img.youtube.com/vi/${item.codigo}/hqdefault.jpg`} alt className="img-fluid" />
                      </a>                  
                    <div className="post-meta text-end">Fecha {item.fecha}</div>
                    <h2  className="post-title">{item.titulo}</h2>
                  </div>
                ))}
              </div>
             
             
            </div>
            <div className="col-lg-4 border-start custom-border">
            <p className="post-meta text-center">{datosCaneles ? getNombreCanal(c1) : "No Encontrado"}</p>

            {datos && datos.filter(item => item.idcanal === c3) // Filtra solo los videos con idcanal=1
             .slice(0, 3) // Limita a los primeros 3 videos
            .map((item) => (
              <div  className="post-entry" key={item.id}>
                <a onClick={() => openDialog(item.codigo)}>
                  <img src={`https://img.youtube.com/vi/${item.codigo}/hqdefault.jpg`} alt className="img-fluid" />
                </a>                  
                <div className="post-meta text-end">Fecha{item.fecha}</div>
                <h2 className="post-title">{item.titulo}</h2>
              </div>
            ))}
            </div>
            {/* Trending Section */}
            <div className="col-lg-4">
              <div className="trending">
                <h3>{datosCaneles ? getNombreCanal(c4) : "No Encontrado"}</h3>
                <ul className="trending-post">
                {datos && datos.filter(item => item.idcanal === c4) // Filtra solo los videos con idcanal=1
                  .slice(0, 6) // Limita a los primeros 3 videos
                  .map((item, index) => (
                      <li key={item.id}>
                        <a href="#" onClick={() => openDialog(item.codigo)}>
                          <span className="number">{index+1}</span>
                          <h3>{item.titulo}</h3>
                          <div className="post-meta text-end">Fecha {item.fecha}</div>
                        </a>
                      </li>
                    ))}
                </ul>
              </div>
            </div> 
          </div>
        </div>
      </div> 
    </div>
  </div>
  <Dialog
        header="Reproductor de Video"
        visible={visible}
        onHide={closeDialog}
        style={{ width: '80vw', maxWidth: '1200px' }}
      >
        {/* Iframe de YouTube */}
        <iframe
          width="100%"
          height="600"
          src={`https://www.youtube.com/embed/${selectedVideoCode}`}
          title="YouTube video player"
          frameBorder="0"
          allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
          allowFullScreen
        ></iframe>
      </Dialog>
</section>

  )
}

export default TrendingCategory