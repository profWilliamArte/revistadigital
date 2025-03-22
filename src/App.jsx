import { BrowserRouter, Route, Routes } from "react-router-dom"
import Header from "./components/Header"
import Inicio from "./pages/Inicio"
import AgregarVideo from "./pages/AgregarVideo"
import Footer from "./components/Footer"
import DetalleCanal from "./pages/DetalleCanal"
import AgregarCanal from "./pages/AgregarCanal"


const App = () => {
  return (

    <BrowserRouter>
      <Header/>
      <Routes>
        <Route path="/" element={<Inicio/>}/>
        <Route path="/agregarunvideo" element={<AgregarVideo/>}/>
        <Route path="/agregaruncanal" element={<AgregarCanal/>}/>
        <Route path="/canales/:id/:nombre" element={<DetalleCanal/>}/>
      </Routes>
      <Footer/>
    </BrowserRouter>

  )
}

export default App