<?php

namespace App\Http\Controllers;

use ErpNET\FileManager\FileManager;
use ErpNET\Models\v1\Controllers\PostController as BasePostController;
use ErpNET\Models\v1\Entities\PostEloquent;
use ErpNET\Models\v1\Interfaces\UserRepository;
use Illuminate\Database\Eloquent\Model;

/**
 * Post resource representation.
 *
 * @Resource("Post", uri="/post")
 */
class PostController extends BasePostController
{

    /**
     * ErpnetWidgetService fields configuration
     * @return array
     */
    protected function widgetServiceFields()
    {
        return [
            'mandante' => ['value' => 'testesdivertidos'],
//            'pageId',
            'title'=> ['customShow'=> function(PostEloquent $item){ return link_to_route('post.show', $item['title'], [$item], ['title'=>'Abrir '.$item['title']]); }],
            'description',
            'hint',
            'paramName'=>['component' => 'widgetCheckbox', 'value' => '1', 'label' => 'Mostrar Nome do Perfil'],
            'paramFirstName'=>['component' => 'widgetCheckbox', 'value' => '1', 'label' => 'Mostrar Somente Primeiro Nome do Perfil'],
            'paramNameSize'=>['attributes' => ['placeholder' => 'ex.: 10'], 'label' => 'Tamanho do Nome do Perfil'],
            'paramNameColor'=>['attributes' => ['placeholder' => 'ex.: FFFFFF'], 'label' => 'Cor do Nome do Perfil'],
            'paramNameX'=>['attributes' => ['placeholder' => 'ex.: 270'], 'label' => 'Posição X do Nome do Perfil'],
            'paramNameY'=>['attributes' => ['placeholder' => 'ex.: 230'], 'label' => 'Posição Y do Nome do Perfil'],
            'paramProfileImageSize'=>['attributes' => ['placeholder' => 'ex.: 116x116'], 'label' => 'Tamanho da Imagem do Perfil'],
            'paramProfileImageX'=>['attributes' => ['placeholder' => 'ex.: 10'], 'label' => 'Posição X da Imagem do Perfil'],
            'paramProfileImageY'=>['attributes' => ['placeholder' => 'ex.: 20'], 'label' => 'Posição Y da Imagem do Perfil'],
            'file'=>['component' => 'widgetFile', 'label' => 'Imagem Antes do Teste', 'customShow'=> function(PostEloquent $item){ return $item->fileImageField('file'); }],
            'file1' => ['component' => 'widgetFile', 'label' => 'Imagem Aleatória do Teste 1', 'customShow'=> function(PostEloquent $item){ return $item->fileImageField('file1'); }],
            'file2' => ['component' => 'widgetFile', 'label' => 'Imagem Aleatória do Teste 2', 'customShow'=> function(PostEloquent $item){ return $item->fileImageField('file2'); }],
            'file3' => ['component' => 'widgetFile', 'label' => 'Imagem Aleatória do Teste 3', 'customShow'=> function(PostEloquent $item){ return $item->fileImageField('file3'); }],
            'file4' => ['component' => 'widgetFile', 'label' => 'Imagem Aleatória do Teste 4', 'customShow'=> function(PostEloquent $item){ return $item->fileImageField('file4'); }],
            'file5' => ['component' => 'widgetFile', 'label' => 'Imagem Aleatória do Teste 5', 'customShow'=> function(PostEloquent $item){ return $item->fileImageField('file5'); }],
            'file6' => ['component' => 'widgetFile', 'label' => 'Imagem Aleatória do Teste 6', 'customShow'=> function(PostEloquent $item){ return $item->fileImageField('file6'); }],
            'file7' => ['component' => 'widgetFile', 'label' => 'Imagem Aleatória do Teste 7', 'customShow'=> function(PostEloquent $item){ return $item->fileImageField('file7'); }],
            'file8' => ['component' => 'widgetFile', 'label' => 'Imagem Aleatória do Teste 8', 'customShow'=> function(PostEloquent $item){ return $item->fileImageField('file8'); }],
            'file9' => ['component' => 'widgetFile', 'label' => 'Imagem Aleatória do Teste 9', 'customShow'=> function(PostEloquent $item){ return $item->fileImageField('file9'); }],
            'file10' => ['component' => 'widgetFile', 'label' => 'Imagem Aleatória do Teste 10', 'customShow'=> function(PostEloquent $item){ return $item->fileImageField('file10'); }],
            'file11' => ['component' => 'widgetFile', 'label' => 'Imagem Aleatória do Teste 11', 'customShow'=> function(PostEloquent $item){ return $item->fileImageField('file11'); }],
            'file12' => ['component' => 'widgetFile', 'label' => 'Imagem Aleatória do Teste 12', 'customShow'=> function(PostEloquent $item){ return $item->fileImageField('file12'); }],
            'file13' => ['component' => 'widgetFile', 'label' => 'Imagem Aleatória do Teste 13', 'customShow'=> function(PostEloquent $item){ return $item->fileImageField('file13'); }],
            'file14' => ['component' => 'widgetFile', 'label' => 'Imagem Aleatória do Teste 14', 'customShow'=> function(PostEloquent $item){ return $item->fileImageField('file14'); }],
            'file15' => ['component' => 'widgetFile', 'label' => 'Imagem Aleatória do Teste 15', 'customShow'=> function(PostEloquent $item){ return $item->fileImageField('file15'); }],
        ];
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Contracts\View\View | \Illuminate\Http\Response
     */
    public function home()
    {
        $this->paginateItemCount = 12;

        list($render, $allData) = $this->getIndexData();

        if (request()->wantsJson()) {

            return response()->json([
                'data' => $allData,
            ]);
        }

        //Render welcome if view with route's name not available
        return view('erpnetWidgetResource::home')->with([
            'render' => $render,
            'data'=>$allData,
            'routePrefix'=>$this->routeName]);
    }

    /**
     * Display the specified resource.
     *
     * @param  int $id
     *
     * @return \Illuminate\Contracts\View\View | \Illuminate\Http\Response
     */
    public function show($id)
    {
        $this->paginateItemCount = 12;

        return parent::show($id);
    }

    /**
     * Display the specified resource.
     *
     * @param $post
     * @return \Illuminate\Contracts\View\View|\Illuminate\Http\Response
     */
    public function random($post)
    {
        $this->paginateItemCount = 6;

        list($render, $allData) = $this->getIndexData();

        //Ajustment to find by id or explicit route binding
        if($post instanceof Model)
            $foundData = $post;
        else
            $foundData = $this->repository->find($post);

        //Override by random file
        $foundData['file'] = $this->randomFile($foundData);

        if(\Auth::check() && isset($foundData['paramName']) && $foundData['paramName'] && !empty($foundData['hint']))
            $foundData['hint'] = str_replace('#nome', \Auth::user()->name, $foundData['hint']);

        if (request()->wantsJson()) {

            return response()->json([
                'data' => $foundData,
            ]);
        }

        //Render welcome if view with route's name not available
        return $this->render('show', $allData, $foundData);
    }

    /**
     * Display the specified resource.
     *
     * @param $post
     * @param string | null $file
     * @return \Illuminate\Contracts\View\View|\Illuminate\Http\Response
     *
     */
    public function showFile($post, $providerId, $file, FileManager $fileManager){
        $foundUser = app(UserRepository::class)->findByField('provider_id', $providerId)->first();
        $foundData = $this->repository->find($post);
        $params = array_merge($foundData->toArray(), ['name' => $foundUser->name,]);
        $imgResource = $fileManager->resourceImgSocialProfileWithBg($file, $foundUser->provider_id, $params, 'jokes');

        return $imgResource->response();
    }

    /**
     * Display the specified resource.
     *
     * @param $post
     * @param string | null $file
     * @return \Illuminate\Contracts\View\View|\Illuminate\Http\Response
     *
     */
    public function showRandom($post, $providerId, $file)
    {
        $this->paginateItemCount = 6;

        list($render, $allData) = $this->getIndexData();

        $foundUser = app(UserRepository::class)->findByField('provider_id', $providerId)->first();

        //Ajustment to find by id or explicit route binding
        if($post instanceof Model)
            $foundData = $post;
        else
            $foundData = $this->repository->find($post);

        //Override by param file
        $foundData['file'] = $file;

        if (request()->wantsJson()) {

            return response()->json([
                'data' => $foundData,
            ]);
        }

        $formConfig = [
            'method' => 'PUT',
            'files' => true,
            'foundUser' => $foundUser,
            'providerId' => $providerId,
            'route' => [$this->routeName.'.update', $foundData],
        ];
        //Render welcome if view with route's name not available
        return $this->render('show', $allData, $foundData, $render, $formConfig);

        //Render welcome if view with route's name not available
//        return $this->render('show', $allData, $foundData);
    }

    /**
     * @param $data
     * @return mixed
     */
    protected function randomFile($data)
    {
        $filtered = [];
        $continue = true;
        $i=1;
        while($continue){
            if (isset($data['file'.$i])){
                if (!empty($data['file'.$i])) {
                    $filtered[] = 'file'.$i;
                }
            } else $continue = false;
            $i++;
        }

        if (count($filtered)>0){
            $random = rand(0, count($filtered)-1);
            return $data[$filtered[$random]];
        } else
            return $data['file'];
    }
}
