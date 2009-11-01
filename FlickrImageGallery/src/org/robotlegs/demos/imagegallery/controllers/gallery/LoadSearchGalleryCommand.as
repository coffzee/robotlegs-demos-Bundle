package org.robotlegs.demos.imagegallery.controllers.gallery
{
	import org.robotlegs.demos.imagegallery.remote.services.IGalleryImageService;
	import org.robotlegs.demos.imagegallery.views.events.GallerySearchEvent;
	import org.robotlegs.mvcs.Command;

	public class LoadSearchGalleryCommand extends Command
	{
		[Inject]
		public var event:GallerySearchEvent;
		
		[Inject]
		public var service:IGalleryImageService;
		
		override public function execute():void
		{
			service.search(event.searchTerm);
		}
	}
}