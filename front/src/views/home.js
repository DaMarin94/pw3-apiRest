import '../App.css';
import banner from '../banner.png';

function Home() {

  return (
    <div className="home">
      <div className='banner-container'>
        <div class="custom-shape-divider-top">
          <svg data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1200 120" preserveAspectRatio="none">
            <path d="M602.45,3.86h0S572.9,116.24,281.94,120H923C632,116.24,602.45,3.86,602.45,3.86Z" class="shape-fill"></path>
          </svg>
        </div>

        <div className='banner row m-auto'>
          <div className='col-6 pe-5 text-start'>
            <h1 className='mb-5'>Explora un mundo de conocimiento con nuestra API de libros</h1>
            <p className='mb-4 pe-5'>Descubre una amplia variedad de libros de todos los géneros, desde clásicos hasta bestsellers, 
             a través de nuestra API de libros. Obtén información detallada sobre cada libro, como sinopsis, autor, 
             calificaciones y más. Ya sea que estés buscando inspiración, investigación o entretenimiento, nuestra 
             API te proporcionará acceso a una vasta biblioteca virtual para satisfacer tus necesidades literarias.</p>
            <button className='btn fs-4 fw-bold px-4 rounded-pill'>¡Empezá ahora!</button>
          </div>

          <div className='col-6 p-0'>
            <img src={banner} style={{ maxWidth: '100%', height: 'auto' }}></img>
          </div>
        </div>
      </div>

      <div class="book-container container row justify-content-center m-auto flex-nowrap my-5">
        <div class="col-3 image-container px-4">
          <img src="https://www.lanormal.com.ar/media/libros/bd4be862594dc7fdb53166047e87f2af.jpg"
               class="rounded img" width="100%" height="400px"></img>
          <button class="ver-mas rounded">Ver más</button>
        </div>
        <div class="col-3 image-container px-4">
          <img src="https://www.resumenlibro.com/img/libros/la-niebla.jpg"
               class="rounded img" width="100%" height="400px"></img>
          <button class="ver-mas rounded">Ver más</button>
        </div>
        <div class="col-3 image-container px-4">
          <img src="https://images.cdn1.buscalibre.com/fit-in/360x360/19/6b/196b0eda62be160160af64d0dfda3eee.jpg"
               class="rounded img" width="100%" height="400px"></img>
          <button class="ver-mas rounded">Ver más</button>
        </div>
        <div class="col-3 image-container px-4">
          <img src="https://cdn.culturagenial.com/es/imagenes/el-principito-portada-cke.jpg"
               class="rounded img" width="100%" height="400px"></img>
          <button class="ver-mas rounded">Ver más</button>
        </div>
      </div>
    </div>
  );
}

export default Home;
