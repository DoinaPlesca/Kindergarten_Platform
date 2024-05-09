using infrastructure.ParametherModel;
using infrastructure.QueryModels;
using infrastructure.Repository;

namespace service;

public class ChildService
{
    private readonly ChildRepository _childRepository;

    public ChildService(ChildRepository childRepository)
    {
        _childRepository = childRepository;
    }

    public async Task<List<GetChildParams>> GetChildrenByParentId(int parentId)
    {
        return await _childRepository.GetChildrenByParentId(parentId);
    }

}