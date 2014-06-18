.class Lcom/motorola/android/systemui/media/VibrationPatternPickerActivity$1;
.super Ljava/lang/Object;
.source "VibrationPatternPickerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/systemui/media/VibrationPatternPickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/android/systemui/media/VibrationPatternPickerActivity;


# direct methods
.method constructor <init>(Lcom/motorola/android/systemui/media/VibrationPatternPickerActivity;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/motorola/android/systemui/media/VibrationPatternPickerActivity$1;->this$0:Lcom/motorola/android/systemui/media/VibrationPatternPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 51
    iget-object v0, p0, Lcom/motorola/android/systemui/media/VibrationPatternPickerActivity$1;->this$0:Lcom/motorola/android/systemui/media/VibrationPatternPickerActivity;

    iput p2, v0, Lcom/motorola/android/systemui/media/VibrationPatternPickerActivity;->mClickedPos:I

    .line 54
    iget-object v0, p0, Lcom/motorola/android/systemui/media/VibrationPatternPickerActivity$1;->this$0:Lcom/motorola/android/systemui/media/VibrationPatternPickerActivity;

    const-wide/16 v1, 0x0

    # invokes: Lcom/motorola/android/systemui/media/VibrationPatternPickerActivity;->vibratePattern(IJ)V
    invoke-static {v0, p2, v1, v2}, Lcom/motorola/android/systemui/media/VibrationPatternPickerActivity;->access$000(Lcom/motorola/android/systemui/media/VibrationPatternPickerActivity;IJ)V

    .line 55
    return-void
.end method
