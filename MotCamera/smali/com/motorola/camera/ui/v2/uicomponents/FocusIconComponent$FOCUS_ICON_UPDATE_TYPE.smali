.class public final enum Lcom/motorola/camera/ui/v2/uicomponents/FocusIconComponent$FOCUS_ICON_UPDATE_TYPE;
.super Ljava/lang/Enum;
.source "FocusIconComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/v2/uicomponents/FocusIconComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FOCUS_ICON_UPDATE_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/motorola/camera/ui/v2/uicomponents/FocusIconComponent$FOCUS_ICON_UPDATE_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/camera/ui/v2/uicomponents/FocusIconComponent$FOCUS_ICON_UPDATE_TYPE;

.field public static final enum FOCUS_ICON_UPDATE:Lcom/motorola/camera/ui/v2/uicomponents/FocusIconComponent$FOCUS_ICON_UPDATE_TYPE;

.field public static final enum FOCUS_ICON_VISIBILITY_UPDATE:Lcom/motorola/camera/ui/v2/uicomponents/FocusIconComponent$FOCUS_ICON_UPDATE_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 41
    new-instance v0, Lcom/motorola/camera/ui/v2/uicomponents/FocusIconComponent$FOCUS_ICON_UPDATE_TYPE;

    const-string v1, "FOCUS_ICON_VISIBILITY_UPDATE"

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/ui/v2/uicomponents/FocusIconComponent$FOCUS_ICON_UPDATE_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/ui/v2/uicomponents/FocusIconComponent$FOCUS_ICON_UPDATE_TYPE;->FOCUS_ICON_VISIBILITY_UPDATE:Lcom/motorola/camera/ui/v2/uicomponents/FocusIconComponent$FOCUS_ICON_UPDATE_TYPE;

    .line 42
    new-instance v0, Lcom/motorola/camera/ui/v2/uicomponents/FocusIconComponent$FOCUS_ICON_UPDATE_TYPE;

    const-string v1, "FOCUS_ICON_UPDATE"

    invoke-direct {v0, v1, v3}, Lcom/motorola/camera/ui/v2/uicomponents/FocusIconComponent$FOCUS_ICON_UPDATE_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/ui/v2/uicomponents/FocusIconComponent$FOCUS_ICON_UPDATE_TYPE;->FOCUS_ICON_UPDATE:Lcom/motorola/camera/ui/v2/uicomponents/FocusIconComponent$FOCUS_ICON_UPDATE_TYPE;

    .line 40
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/motorola/camera/ui/v2/uicomponents/FocusIconComponent$FOCUS_ICON_UPDATE_TYPE;

    sget-object v1, Lcom/motorola/camera/ui/v2/uicomponents/FocusIconComponent$FOCUS_ICON_UPDATE_TYPE;->FOCUS_ICON_VISIBILITY_UPDATE:Lcom/motorola/camera/ui/v2/uicomponents/FocusIconComponent$FOCUS_ICON_UPDATE_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/motorola/camera/ui/v2/uicomponents/FocusIconComponent$FOCUS_ICON_UPDATE_TYPE;->FOCUS_ICON_UPDATE:Lcom/motorola/camera/ui/v2/uicomponents/FocusIconComponent$FOCUS_ICON_UPDATE_TYPE;

    aput-object v1, v0, v3

    sput-object v0, Lcom/motorola/camera/ui/v2/uicomponents/FocusIconComponent$FOCUS_ICON_UPDATE_TYPE;->$VALUES:[Lcom/motorola/camera/ui/v2/uicomponents/FocusIconComponent$FOCUS_ICON_UPDATE_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/ui/v2/uicomponents/FocusIconComponent$FOCUS_ICON_UPDATE_TYPE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 40
    const-class v0, Lcom/motorola/camera/ui/v2/uicomponents/FocusIconComponent$FOCUS_ICON_UPDATE_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/v2/uicomponents/FocusIconComponent$FOCUS_ICON_UPDATE_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/motorola/camera/ui/v2/uicomponents/FocusIconComponent$FOCUS_ICON_UPDATE_TYPE;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/motorola/camera/ui/v2/uicomponents/FocusIconComponent$FOCUS_ICON_UPDATE_TYPE;->$VALUES:[Lcom/motorola/camera/ui/v2/uicomponents/FocusIconComponent$FOCUS_ICON_UPDATE_TYPE;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/ui/v2/uicomponents/FocusIconComponent$FOCUS_ICON_UPDATE_TYPE;

    return-object v0
.end method
