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
