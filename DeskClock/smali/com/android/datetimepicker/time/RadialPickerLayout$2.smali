.class Lcom/android/datetimepicker/time/RadialPickerLayout$2;
.super Ljava/lang/Object;
.source "RadialPickerLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/datetimepicker/time/RadialPickerLayout;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/datetimepicker/time/RadialPickerLayout;

.field final synthetic val$isInnerCircle:[Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Lcom/android/datetimepicker/time/RadialPickerLayout;[Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 614
    iput-object p1, p0, Lcom/android/datetimepicker/time/RadialPickerLayout$2;->this$0:Lcom/android/datetimepicker/time/RadialPickerLayout;

    iput-object p2, p0, Lcom/android/datetimepicker/time/RadialPickerLayout$2;->val$isInnerCircle:[Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 617
    iget-object v1, p0, Lcom/android/datetimepicker/time/RadialPickerLayout$2;->this$0:Lcom/android/datetimepicker/time/RadialPickerLayout;

    # setter for: Lcom/android/datetimepicker/time/RadialPickerLayout;->mDoingMove:Z
    invoke-static {v1, v5}, Lcom/android/datetimepicker/time/RadialPickerLayout;->access$202(Lcom/android/datetimepicker/time/RadialPickerLayout;Z)Z

    .line 618
    iget-object v1, p0, Lcom/android/datetimepicker/time/RadialPickerLayout$2;->this$0:Lcom/android/datetimepicker/time/RadialPickerLayout;

    iget-object v2, p0, Lcom/android/datetimepicker/time/RadialPickerLayout$2;->this$0:Lcom/android/datetimepicker/time/RadialPickerLayout;

    # getter for: Lcom/android/datetimepicker/time/RadialPickerLayout;->mDownDegrees:I
    invoke-static {v2}, Lcom/android/datetimepicker/time/RadialPickerLayout;->access$300(Lcom/android/datetimepicker/time/RadialPickerLayout;)I

    move-result v2

    iget-object v3, p0, Lcom/android/datetimepicker/time/RadialPickerLayout$2;->val$isInnerCircle:[Ljava/lang/Boolean;

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    # invokes: Lcom/android/datetimepicker/time/RadialPickerLayout;->reselectSelector(IZZZ)I
    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/datetimepicker/time/RadialPickerLayout;->access$400(Lcom/android/datetimepicker/time/RadialPickerLayout;IZZZ)I

    move-result v0

    .line 620
    .local v0, "value":I
    iget-object v1, p0, Lcom/android/datetimepicker/time/RadialPickerLayout$2;->this$0:Lcom/android/datetimepicker/time/RadialPickerLayout;

    # setter for: Lcom/android/datetimepicker/time/RadialPickerLayout;->mLastValueSelected:I
    invoke-static {v1, v0}, Lcom/android/datetimepicker/time/RadialPickerLayout;->access$502(Lcom/android/datetimepicker/time/RadialPickerLayout;I)I

    .line 621
    iget-object v1, p0, Lcom/android/datetimepicker/time/RadialPickerLayout$2;->this$0:Lcom/android/datetimepicker/time/RadialPickerLayout;

    # getter for: Lcom/android/datetimepicker/time/RadialPickerLayout;->mListener:Lcom/android/datetimepicker/time/RadialPickerLayout$OnValueSelectedListener;
    invoke-static {v1}, Lcom/android/datetimepicker/time/RadialPickerLayout;->access$600(Lcom/android/datetimepicker/time/RadialPickerLayout;)Lcom/android/datetimepicker/time/RadialPickerLayout$OnValueSelectedListener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/datetimepicker/time/RadialPickerLayout$2;->this$0:Lcom/android/datetimepicker/time/RadialPickerLayout;

    invoke-virtual {v2}, Lcom/android/datetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v2

    invoke-interface {v1, v2, v0, v4}, Lcom/android/datetimepicker/time/RadialPickerLayout$OnValueSelectedListener;->onValueSelected(IIZ)V

    .line 622
    return-void
.end method
