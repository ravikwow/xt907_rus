.class Lcom/android/deskclock/SnoozeLengthDialog$1;
.super Ljava/lang/Object;
.source "SnoozeLengthDialog.java"

# interfaces
.implements Landroid/widget/NumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/SnoozeLengthDialog;->onBindDialogView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/SnoozeLengthDialog;


# direct methods
.method constructor <init>(Lcom/android/deskclock/SnoozeLengthDialog;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/deskclock/SnoozeLengthDialog$1;->this$0:Lcom/android/deskclock/SnoozeLengthDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Landroid/widget/NumberPicker;II)V
    .locals 1
    .param p1, "picker"    # Landroid/widget/NumberPicker;
    .param p2, "oldVal"    # I
    .param p3, "newVal"    # I

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/deskclock/SnoozeLengthDialog$1;->this$0:Lcom/android/deskclock/SnoozeLengthDialog;

    # invokes: Lcom/android/deskclock/SnoozeLengthDialog;->updateDays()V
    invoke-static {v0}, Lcom/android/deskclock/SnoozeLengthDialog;->access$000(Lcom/android/deskclock/SnoozeLengthDialog;)V

    .line 52
    return-void
.end method
