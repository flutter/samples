import { ChangeDetectorRef, Component } from '@angular/core';
import { NgFlutterComponent } from './ng-flutter/ng-flutter.component';
import { BreakpointObserver, Breakpoints } from '@angular/cdk/layout';
import { MatSidenavModule } from '@angular/material/sidenav';
import { CommonModule } from '@angular/common';
import { MatToolbarModule } from '@angular/material/toolbar';
import { MatIconModule } from '@angular/material/icon';
import { MatListModule } from '@angular/material/list';
import { MatCardModule } from '@angular/material/card';
import { MatSliderModule } from '@angular/material/slider';
import { MatButtonModule } from '@angular/material/button';
import { MatSelectModule } from '@angular/material/select';
import { MatFormFieldModule } from '@angular/material/form-field';
import { MatInputModule } from '@angular/material/input';

@Component({
  standalone: true,
  selector: 'app-root',
  template: `
<mat-toolbar color="primary">
  <button
    aria-label="Toggle sidenav"
    mat-icon-button
    (click)="drawer.toggle()">
    <mat-icon aria-label="Side nav toggle icon">menu</mat-icon>
  </button>
  <span>Angular 🤝 Flutter</span>
  <span class="toolbar-spacer"></span>
  <mat-icon aria-hidden="true">flutter_dash</mat-icon>
</mat-toolbar>
<mat-sidenav-container [hasBackdrop]=false class="sidenav-container">
  <mat-sidenav #drawer mode="side" [opened]=false class="sidenav">
    <mat-nav-list autosize>
      <section>
        <h2>Effects</h2>
        <div class="button-list">
          <button class="mb-control" mat-stroked-button color="primary"
              (click)="container.classList.toggle('fx-shadow')">Shadow</button>
          <button class="mb-control" mat-stroked-button color="primary"
              (click)="container.classList.toggle('fx-mirror')">Mirror</button>
          <button class="mb-control" mat-stroked-button color="primary"
              (click)="container.classList.toggle('fx-resize')">Resize</button>
          <button class="mb-control" mat-stroked-button color="primary"
              (click)="container.classList.toggle('fx-spin')">Spin</button>
        </div>
      </section>

      <section>
        <h2>JS Interop</h2>
        <mat-form-field appearance="outline">
          <mat-label>Screen</mat-label>
          <mat-select 
              (valueChange)="this.flutterState?.setScreen($event)" 
              [value]="this.flutterState?.getScreen()">
            <mat-option value="counter">Counter</mat-option>
            <mat-option value="text">TextField</mat-option>
            <mat-option value="dash">Custom App</mat-option>
          </mat-select>
        </mat-form-field>
        <mat-form-field appearance="outline" *ngIf="this.flutterState?.getScreen() == 'counter'">
          <mat-label>Clicks</mat-label>
          <input type="number" matInput (input)="onCounterSet($event)" [value]="this.flutterState?.getClicks()" />
        </mat-form-field>
        <mat-form-field appearance="outline" *ngIf="this.flutterState?.getScreen() != 'counter'">
          <mat-label>Text</mat-label>
          <input type="text" matInput (input)="onTextSet($event)" [value]="this.flutterState?.getText()" />
          <button *ngIf="this.flutterState?.getText()" matSuffix mat-icon-button aria-label="Clear" (click)="this.flutterState?.setText('')">
            <mat-icon>close</mat-icon>
          </button>
        </mat-form-field>
      </section>
    </mat-nav-list>
  </mat-sidenav>

  <mat-sidenav-content class="sidenav-content">
    <div class="flutter-app" #container>
        <ng-flutter
          src="flutter/main.dart.js"
          assetBase="/flutter/"
          (appLoaded)="onFlutterAppLoaded($event)"></ng-flutter>
    </div>
  </mat-sidenav-content>
</mat-sidenav-container>
`,
  styles: [`
  :host{
    display: flex;
    height: 100%;
    flex-direction: column;
  }
  .toolbar-spacer {
    flex: 1 1 auto;
  }
  .sidenav-container {
    flex: 1;
  }
  .sidenav {
    width: 300px;
    padding: 10px;
  }
  .button-list {
    display: flex;
    flex-wrap: wrap;
    gap: 5px;
    margin-bottom: 20px;
  }
  .button-list button {
    min-width: 130px;
  }
  .sidenav-content {
    display: flex;
    justify-content: center;
    align-items: center;
  }
  .flutter-app {
    border: 1px solid #eee;
    border-radius: 5px;
    height: 480px;
    width: 320px;
    transition: all 150ms ease-in-out;
    overflow: hidden;
  }
  `],
  imports: [
    NgFlutterComponent,
    MatToolbarModule,
    MatSidenavModule,
    MatSidenavModule,
    MatIconModule,
    CommonModule,
    MatListModule,
    MatCardModule,
    MatSliderModule,
    MatButtonModule,
    MatFormFieldModule,
    MatSelectModule,
    MatInputModule,
  ],
})
export class AppComponent {
  title = 'ng-flutter';
  flutterState?: any;

  constructor(private changeDetectorRef: ChangeDetectorRef, private breakpointObserver: BreakpointObserver) { }

  onFlutterAppLoaded(state: any) {
    this.flutterState = state;
    this.flutterState.onClicksChanged(() => { this.onCounterChanged() });
    this.flutterState.onTextChanged(() => { this.onTextChanged() });
  }

  onCounterSet(event: Event) {
    let clicks = parseInt((event.target as HTMLInputElement).value, 10) || 0;
    this.flutterState.setClicks(clicks);
  }

  onTextSet(event: Event) {
    this.flutterState.setText((event.target as HTMLInputElement).value || '');
  }

  // I need to force a change detection here. When clicking on the "Decrement"
  // button, everything works fine, but clicking on Flutter doesn't trigger a
  // repaint (even though this method is called)
  onCounterChanged() {
    this.changeDetectorRef.detectChanges();
  }

  onTextChanged() {
    this.changeDetectorRef.detectChanges();
  }
}
