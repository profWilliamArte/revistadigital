import { useEffect, useState } from "react";
import { Dialog } from 'primereact/dialog';
const API = 'http://localhost/backendrd/api/videos/get/';
const API_CANALES = 'http://localhost/backendrd/api/canales/get/';

const Bloque1 = ({ c1, c2, c3, c4 }) => {
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
    const getNombreCanal = (id) => {
        const canal = datosCaneles.find((item) => item.id === id); // Busca el canal con el ID proporcionado
        return canal ? canal.nombre : "Canal no encontrado"; // Retorna el nombre o un mensaje si no se encuentra
    };

    const openDialog = (codigo) => {
        setSelectedVideoCode(codigo);
        setVisible(true);
      };
      
      // Función para cerrar el Dialog
      const closeDialog = () => {
        setVisible(false);
      }
    return (
        <section id="lifestyle-category" className="lifestyle-category section">
            <div className="container section-title aos-init aos-animate" data-aos="fade-up">
                <div className="section-title-container d-flex align-items-center justify-content-between">
                    <h2>Mas Canales</h2>
                    <p><a href="categories.html">prindcipales Noticias</a></p>
                </div>
            </div>{/* End Section Title */}
            <div className="container aos-init aos-animate" data-aos="fade-up" data-aos-delay={100}>
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
                                    <hr />
                                </div>

                            ))}

                    </div>
                    <div className="col-lg-8">
                        <div className="row g-5">
                            <div className="col-lg-4 border-start custom-border">
                                <p className="post-meta text-center">
                                    {datosCaneles ? getNombreCanal(c2) : "No Encontrado"}
                                </p>
                                {datos && datos.filter(item => item.idcanal === c2) // Filtra solo los videos con idcanal=1
                                    .slice(0, 4) // Limita a los primeros 3 videos
                                    .map((item) => (
                                        <div className="post-entry" key={item.id}>
                                            <a onClick={() => openDialog(item.codigo)}>
                                                <img src={`https://img.youtube.com/vi/${item.codigo}/hqdefault.jpg`} alt className="img-fluid" />
                                            </a>
                                            <div className="post-meta text-end">Fecha{item.fecha}</div>
                                            <p className="post-title">{item.titulo}</p>
                                        </div>
                                    ))}

                            </div>
                            <div className="col-lg-4 border-start custom-border">
                                <p className="post-meta text-center">
                                    {datosCaneles ? getNombreCanal(c3) : "No Encontrado"}
                                </p>
                                {datos && datos.filter(item => item.idcanal === c3) // Filtra solo los videos con idcanal=1
                                    .slice(0, 4) // Limita a los primeros 3 videos
                                    .map((item) => (
                                        <div className="post-entry" key={item.id}>
                                            <a onClick={() => openDialog(item.codigo)}>
                                                <img src={`https://img.youtube.com/vi/${item.codigo}/hqdefault.jpg`} alt className="img-fluid" />
                                            </a>
                                            <div className="post-meta text-end">Fecha{item.fecha}</div>
                                            <p className="post-title">{item.titulo}</p>
                                        </div>
                                    ))}

                            </div>
                            <div className="col-lg-4">

                            <p className="post-meta text-center">{datosCaneles ? getNombreCanal(c4) : "No Encontrado"}</p>
                                {datos && datos.filter(item => item.idcanal === c4) // Filtra solo los videos con idcanal=1
                                    .slice(0, 6) // Limita a los primeros 3 videos
                                    .map((item) => (

                                <div key={item.id} className="post-list border-bottom">
                                   
                                    <h2 className="mb-2"><a href="single-post.html#">{item.titulo}</a></h2>
                                    <div className="post-meta text-end">Fecha{item.fecha}</div>
                                </div>

                ))}

                                
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

export default Bloque1