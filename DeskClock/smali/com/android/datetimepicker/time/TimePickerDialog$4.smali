.class Lcom/android/datetimepicker/time/TimePickerDialog$4;
.super Ljava/lang/Object;
.source "TimePickerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/datetimepicker/time/TimePickerDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/datetimepicker/time/TimePickerDialog;


# direct methods
.method constructor <init>(Lcom/android/datetimepicker/time/TimePickerDialog;)V
    .locals 0

    .prologue
    .line 281
    iput-object p1, p0, Lcom/android/datetimepicker/time/TimePickerDialog$4;->this$0:Lcom/android/datetimepicker/time/TimePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 284
    iget-object v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog$4;->this$0:Lcom/android/datetimepicker/time/TimePickerDialog;

    invoke-virtual {v1}, Lcom/android/datetimepicker/time/TimePickerDialog;->tryVibrate()V

    .line 285
    iget-object v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog$4;->this$0:Lcom/android/datetimepicker/time/TimePickerDialog;

    # getter for: Lcom/android/datetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/android/datetimepicker/time/RadialPickerLayout;
    invoke-static {v1}, Lcom/android/datetimepicker/time/TimePickerDialog;->access$600(Lcom/android/datetimepicker/time/TimePickerDialog;)Lcom/android/datetimepicker/time/RadialPickerLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/datetimepicker/time/RadialPickerLayout;->getIsCurrentlyAmOrPm()I

    move-result v0

    .line 286
    .local v0, "amOrPm":I
    if-nez v0, :cond_1

    .line 287
    const/4 v0, 0x1

    .line 291
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog$4;->this$0:Lcom/android/datetimepicker/time/TimePickerDialog;

    # invokes: Lcom/android/datetimepicker/time/TimePickerDialog;->updateAmPmDisplay(I)V
    invoke-static {v1, v0}, Lcom/android/datetimepicker/time/TimePickerDialog;->access$700(Lcom/android/datetimepicker/time/TimePickerDialog;I)V

    .line 292
    iget-object v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog$4;->this$0:Lcom/android/datetimepicker/time/TimePickerDialog;

    # getter for: Lcom/android/datetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/android/datetimepicker/time/RadialPickerLayout;
    invoke-static {v1}, Lcom/android/datetimepicker/time/TimePickerDialog;->access$600(Lcom/android/datetimepicker/time/TimePickerDialog;)Lcom/android/datetimepicker/time/RadialPickerLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/datetimepicker/time/RadialPickerLayout;->setAmOrPm(I)V

    .line 293
    return-void

    .line 288
    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 289
    const/4 v0, 0x0

    goto :goto_0
.end method
