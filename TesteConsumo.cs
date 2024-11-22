using EcoWatt.Dtos;
using Microsoft.AspNetCore.Authentication;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http.Json;
using System.Net;
using System.Text;
using System.Threading.Tasks;
using EcoWatt.Repository.Interface;
using Moq;
using EcoWatt.Models;

using EcoWatt.Controllers;
using EcoWatt.Models;
using EcoWatt.Repository.Interface;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Moq;
using System.Collections.Generic;
using System.Threading.Tasks;
using Xunit;

namespace EcoWatt.Tests
{
    public class ConsumoControllerTests
    {
        private readonly Mock<IConsumoRepository> _mockRepository;
        private readonly ConsumoController _controller;

        public ConsumoControllerTests()
        {
            _mockRepository = new Mock<IConsumoRepository>();
            _controller = new ConsumoController(_mockRepository.Object);
        }

        [Fact]
        public async Task GetConsumo_ReturnsOkWithConsumos_WhenConsumosExist()
        {
            // Arrange
            var consumos = new List<Consumo>
            {
                new Consumo { ConsumoId = 1, Valor = 100 },
                new Consumo { ConsumoId = 2, Valor = 200 }
            };
            _mockRepository.Setup(repo => repo.GetConsumos()).ReturnsAsync(consumos);

            // Act
            var result = await _controller.GetConsumo();

            // Assert
            var okResult = Assert.IsType<OkObjectResult>(result.Result);
            Assert.Equal(StatusCodes.Status200OK, okResult.StatusCode);
            Assert.Equal(consumos, okResult.Value);
        }

        [Fact]
        public async Task GetConsumoById_ReturnsNotFound_WhenConsumoDoesNotExist()
        {
            // Arrange
            int consumoId = 1;
            _mockRepository.Setup(repo => repo.GetConsumo(consumoId)).ReturnsAsync((Consumo)null);

            // Act
            var result = await _controller.GetConsumo(consumoId);

            // Assert
            var notFoundResult = Assert.IsType<NotFoundResult>(result.Result);
            Assert.Equal(StatusCodes.Status404NotFound, notFoundResult.StatusCode);
        }

        [Fact]
        public async Task AddConsumo_ReturnsCreatedAtAction_WhenValidConsumoIsProvided()
        {
            // Arrange
            var consumo = new Consumo { ConsumoId = 1, Valor = 100 };
            _mockRepository.Setup(repo => repo.AddConsumo(consumo)).ReturnsAsync(consumo);

            // Act
            var result = await _controller.AddConsumo(consumo);

            // Assert
            var createdResult = Assert.IsType<CreatedAtActionResult>(result.Result);
            Assert.Equal(StatusCodes.Status201Created, createdResult.StatusCode);
            Assert.Equal(consumo, createdResult.Value);
        }

        [Fact]
        public async Task UpdateConsumo_ReturnsOk_WhenConsumoIsUpdated()
        {
            // Arrange
            var consumo = new Consumo { ConsumoId = 1, Valor = 150 };
            _mockRepository.Setup(repo => repo.GetConsumo(consumo.ConsumoId)).ReturnsAsync(consumo);
            _mockRepository.Setup(repo => repo.UpdateConsumo(consumo)).ReturnsAsync(consumo);

            // Act
            var result = await _controller.UpdateConsumo(consumo);

            // Assert
            var okResult = Assert.IsType<OkObjectResult>(result.Result);
            Assert.Equal(StatusCodes.Status200OK, okResult.StatusCode);
            Assert.Equal(consumo, okResult.Value);
        }

        [Fact]
        public async Task DeleteConsumo_ReturnsOk_WhenConsumoIsDeleted()
        {
            // Arrange
            int consumoId = 1;
            var consumo = new Consumo { ConsumoId = consumoId, Valor = 100 };
            _mockRepository.Setup(repo => repo.GetConsumo(consumoId)).ReturnsAsync(consumo);

            // Act
            var result = await _controller.DeleteConsumo(consumoId);

            // Assert
            var okResult = Assert.IsType<OkObjectResult>(result);
            Assert.Equal(StatusCodes.Status200OK, okResult.StatusCode);
            Assert.Equal($"Consumo com id {consumoId} deletado", okResult.Value);
        }
    }
}

//dependencias necessárias
//dotnet add package Moq
//dotnet add package xunit
//dotnet add package xunit.runner.visualstudio
//dotnet add package Microsoft.AspNetCore.Mvc
//dotnet add package Microsoft.AspNetCore.Http
//dotnet add package Microsoft.NET.Test.Sdk

