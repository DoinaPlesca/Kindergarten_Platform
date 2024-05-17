using Dapper;
using infrastructure.QueryModels;
using Microsoft.Extensions.Logging;
using Npgsql;
using System.Collections.Generic;

namespace infrastructure.Repository
{
    public class GalleryRepository
    {
        private readonly NpgsqlDataSource _dataSource;
        private readonly ILogger<GalleryRepository> _logger;

        public GalleryRepository(NpgsqlDataSource dataSource, ILogger<GalleryRepository> logger)
        {
            _dataSource = dataSource;
            _logger = logger;
        }

        public Gallery AddNewPhoto(Gallery gallery)
        {
            using var conn = _dataSource.OpenConnection();
            return conn.QueryFirst<Gallery>(@$"
                INSERT INTO kindergarten.photo (photourl, description)
                VALUES (@{nameof(Gallery.photourl)}, @{nameof(Gallery.description)})
                RETURNING photourl AS {nameof(Gallery.photourl)},
                          description AS {nameof(Gallery.description)},
                          photoid AS {nameof(Gallery.photoid)};", gallery);
        }

        public IEnumerable<Gallery> GetLastPhotos()
        {
            using var conn = _dataSource.OpenConnection();
            string sql = @"
                SELECT 
                    photourl AS photourl,
                    description AS description,
                    photoid AS photoid
                FROM 
                    kindergarten.photo
                ORDER BY 
                    photoid DESC
                LIMIT 40";
            
            return conn.Query<Gallery>(sql).ToList();
        }
    }
}