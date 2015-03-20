.class Lcom/motorola/messaging/view/NumberPickerDialog$1;
.super Ljava/lang/Object;
.source "NumberPickerDialog.java"

# interfaces
.implements Landroid/widget/NumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/view/NumberPickerDialog;-><init>(Landroid/content/Context;Lcom/motorola/messaging/view/NumberPickerDialog$OnNumberSetListener;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/messaging/view/NumberPickerDialog;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/view/NumberPickerDialog;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/motorola/messaging/view/NumberPickerDialog$1;->this$0:Lcom/motorola/messaging/view/NumberPickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Landroid/widget/NumberPicker;II)V
    .locals 1
    .param p1, "spinner"    # Landroid/widget/NumberPicker;
    .param p2, "oldVal"    # I
    .param p3, "newVal"    # I

    .prologue
    .line 79
    iget-object v0, p0, Lcom/motorola/messaging/view/NumberPickerDialog$1;->this$0:Lcom/motorola/messaging/view/NumberPickerDialog;

    # invokes: Lcom/motorola/messaging/view/NumberPickerDialog;->updateInputState()V
    invoke-static {v0}, Lcom/motorola/messaging/view/NumberPickerDialog;->access$000(Lcom/motorola/messaging/view/NumberPickerDialog;)V

    .line 80
    return-void
.end method
