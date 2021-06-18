import { Controller } from 'stimulus';

export default class extends Controller {
	refresh() {
		this.element.requestSubmit();
	}
}
