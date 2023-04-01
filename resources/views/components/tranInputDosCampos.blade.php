<div class="col-12 col-md-6 d-flex ">

    <label for="" class="label-custom col-3 col-md-2"><b> {{ $label }}</b> </label>

    <div class="row d-inline-flex">

        <div class=" col-6 mb-1 col-md-4">
            <input type="text" class="form-control form-control-sm" name="{{ $inId }}" id="{{ $inId }}"
                readonly>
        </div>

        <div class="col-5  col-md-7">

            <input type="text" class="form-control form-control-sm col-10" name="{{ $inDesc }}"
                id="{{ $inDesc }}" readonly>

        </div>

        <div class="col-1 ">

            <span role="button" id="btn{{$inId}}"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="14" fill="var(--colDianasis)"
                class="bi bi-binoculars-fill" viewBox="0 0 16 16">
                <path
                    d="M4.5 1A1.5 1.5 0 0 0 3 2.5V3h4v-.5A1.5 1.5 0 0 0 5.5 1h-1zM7 4v1h2V4h4v.882a.5.5 0 0 0 .276.447l.895.447A1.5 1.5 0 0 1 15 7.118V13H9v-1.5a.5.5 0 0 1 .146-.354l.854-.853V9.5a.5.5 0 0 0-.5-.5h-3a.5.5 0 0 0-.5.5v.793l.854.853A.5.5 0 0 1 7 11.5V13H1V7.118a1.5 1.5 0 0 1 .83-1.342l.894-.447A.5.5 0 0 0 3 4.882V4h4zM1 14v.5A1.5 1.5 0 0 0 2.5 16h3A1.5 1.5 0 0 0 7 14.5V14H1zm8 0v.5a1.5 1.5 0 0 0 1.5 1.5h3a1.5 1.5 0 0 0 1.5-1.5V14H9zm4-11H9v-.5A1.5 1.5 0 0 1 10.5 1h1A1.5 1.5 0 0 1 13 2.5V3z" />
            </svg>
        </span>

        </div>

        

    </div>
</div>
