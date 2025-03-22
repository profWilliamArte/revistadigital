import { Link } from "react-router-dom"
import MenuCanal from "./MenuCanal"


const Header = () => {
  return (
    <div id="header" className="header d-flex align-items-center sticky-top">
    <div className="container position-relative d-flex align-items-center justify-content-between">
        <Link to="/" href="#" className="logo d-flex align-items-center me-auto me-xl-0">

        <h1 className="sitename">ZenBlog</h1>
        </Link>
        <nav id="navmenu" className="navmenu">
        <ul>
            <li><Link to="/" href="#" className="active">Home</Link></li>
            <li className="dropdown"><a href="#"><span>Caneles</span> <i className="bi bi-chevron-down toggle-dropdown" /></a>
              <ul><MenuCanal/></ul>
            </li>
            <li><Link to="/agregaruncanal" href="#">Agrega un Canal</Link></li>
            <li><Link to="/agregarunvideo" href="#">Agrega un Video</Link></li>
           
        </ul>
        <i className="mobile-nav-toggle d-xl-none bi bi-list" />
        </nav>
        <div className="header-social-links">
        <a href="#" className="twitter"><i className="bi bi-twitter-x" /></a>
        <a href="#" className="facebook"><i className="bi bi-facebook" /></a>
        <a href="#" className="instagram"><i className="bi bi-instagram" /></a>
        <a href="#" className="linkedin"><i className="bi bi-linkedin" /></a>
        </div>
    </div>
    </div>

  )
}

export default Header