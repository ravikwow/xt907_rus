.class Lcom/android/contacts/datepicker/DatePicker$1;
.super Ljava/lang/Object;
.source "DatePicker.java"

# interfaces
.implements Landroid/widget/NumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/datepicker/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/datepicker/DatePicker;


# direct methods
.method constructor <init>(Lcom/android/contacts/datepicker/DatePicker;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/contacts/datepicker/DatePicker$1;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Landroid/widget/NumberPicker;II)V
    .locals 1
    .param p1, "picker"    # Landroid/widget/NumberPicker;
    .param p2, "oldVal"    # I
    .param p3, "newVal"    # I

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker$1;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    # setter for: Lcom/android/contacts/datepicker/DatePicker;->mDay:I
    invoke-static {v0, p3}, Lcom/android/contacts/datepicker/DatePicker;->access$002(Lcom/android/contacts/datepicker/DatePicker;I)I

    .line 119
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker$1;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    # invokes: Lcom/android/contacts/datepicker/DatePicker;->notifyDateChanged()V
    invoke-static {v0}, Lcom/android/contacts/datepicker/DatePicker;->access$100(Lcom/android/contacts/datepicker/DatePicker;)V

    .line 120
    return-void
.end method
