﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Libroteca.Models;

namespace Libroteca.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class AutorController : ControllerBase
    {
        private readonly LibrotecaContext _context;

        public AutorController(LibrotecaContext context)
        {
            _context = context;
        }

        // GET: api/Autor
        [HttpGet]
        public async Task<ActionResult<IEnumerable<Autor>>> GetAutors()
        {
          if (_context.Autors == null)
          {
              return NotFound();
          }
            return await _context.Autors.ToListAsync();
        }

        // GET: api/Autor/5
        [HttpGet("{id}")]
        public async Task<ActionResult<Autor>> GetAutor(int id)
        {
          if (_context.Autors == null)
          {
              return NotFound();
          }
            var autor = await _context.Autors.FindAsync(id);

            if (autor == null)
            {
                return NotFound();
            }

            return autor;
        }

        // PUT: api/Autor/5
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPut("{id}")]
        public async Task<IActionResult> PutAutor(int id, Autor autor)
        {
            if (id != autor.Id)
            {
                return BadRequest();
            }

            _context.Entry(autor).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!AutorExists(id))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }

            return NoContent();
        }

        // POST: api/Autor
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPost]
        public async Task<ActionResult<Autor>> PostAutor(Autor autor)
        {
          if (_context.Autors == null)
          {
              return Problem("Entity set 'LibrotecaContext.Autors'  is null.");
          }
            _context.Autors.Add(autor);
            await _context.SaveChangesAsync();

            return CreatedAtAction(nameof(GetAutor), new { id = autor.Id }, autor);
        }

        // DELETE: api/Autor/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteAutor(int id)
        {
            if (_context.Autors == null)
            {
                return NotFound();
            }
            var autor = await _context.Autors.FindAsync(id);
            if (autor == null)
            {
                return NotFound();
            }

            _context.Autors.Remove(autor);
            await _context.SaveChangesAsync();

            return NoContent();
        }

        private bool AutorExists(int id)
        {
            return (_context.Autors?.Any(e => e.Id == id)).GetValueOrDefault();
        }
    }
}
