import { ComponentFixture, TestBed } from '@angular/core/testing';

import { NgFlutterComponent } from './ng-flutter.component';

describe('NgFlutterComponent', () => {
  let component: NgFlutterComponent;
  let fixture: ComponentFixture<NgFlutterComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ NgFlutterComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(NgFlutterComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
