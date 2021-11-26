.class public Lcom/skyfishjy/library/RippleBackground;
.super Landroid/widget/RelativeLayout;
.source "RippleBackground.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/skyfishjy/library/RippleBackground$RippleView;
    }
.end annotation


# static fields
.field private static final DEFAULT_DURATION_TIME:I = 0xbb8

.field private static final DEFAULT_FILL_TYPE:I = 0x0

.field private static final DEFAULT_RIPPLE_COUNT:I = 0x6

.field private static final DEFAULT_SCALE:F = 6.0f


# instance fields
.field private animationRunning:Z

.field private animatorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private animatorSet:Landroid/animation/AnimatorSet;

.field private paint:Landroid/graphics/Paint;

.field private rippleAmount:I

.field private rippleColor:I

.field private rippleDelay:I

.field private rippleDurationTime:I

.field private rippleParams:Landroid/widget/RelativeLayout$LayoutParams;

.field private rippleRadius:F

.field private rippleScale:F

.field private rippleStrokeWidth:F

.field private rippleType:I

.field private rippleViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/skyfishjy/library/RippleBackground$RippleView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 44
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/skyfishjy/library/RippleBackground;->animationRunning:Z

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/skyfishjy/library/RippleBackground;->rippleViewList:Ljava/util/ArrayList;

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/skyfishjy/library/RippleBackground;->animationRunning:Z

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/skyfishjy/library/RippleBackground;->rippleViewList:Ljava/util/ArrayList;

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/skyfishjy/library/RippleBackground;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/skyfishjy/library/RippleBackground;->animationRunning:Z

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/skyfishjy/library/RippleBackground;->rippleViewList:Ljava/util/ArrayList;

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/skyfishjy/library/RippleBackground;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/skyfishjy/library/RippleBackground;)F
    .locals 1
    .param p0, "x0"    # Lcom/skyfishjy/library/RippleBackground;

    .line 21
    iget v0, p0, Lcom/skyfishjy/library/RippleBackground;->rippleStrokeWidth:F

    return v0
.end method

.method static synthetic access$100(Lcom/skyfishjy/library/RippleBackground;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcom/skyfishjy/library/RippleBackground;

    .line 21
    iget-object v0, p0, Lcom/skyfishjy/library/RippleBackground;->paint:Landroid/graphics/Paint;

    return-object v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 58
    invoke-virtual {p0}, Lcom/skyfishjy/library/RippleBackground;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    return-void

    .line 61
    :cond_0
    if-eqz p2, :cond_3

    .line 65
    sget-object v0, Lcom/skyfishjy/library/R$styleable;->RippleBackground:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 66
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    sget v1, Lcom/skyfishjy/library/R$styleable;->RippleBackground_rb_color:I

    invoke-virtual {p0}, Lcom/skyfishjy/library/RippleBackground;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/skyfishjy/library/R$color;->rippelColor:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/skyfishjy/library/RippleBackground;->rippleColor:I

    .line 67
    sget v1, Lcom/skyfishjy/library/R$styleable;->RippleBackground_rb_strokeWidth:I

    invoke-virtual {p0}, Lcom/skyfishjy/library/RippleBackground;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/skyfishjy/library/R$dimen;->rippleStrokeWidth:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/skyfishjy/library/RippleBackground;->rippleStrokeWidth:F

    .line 68
    sget v1, Lcom/skyfishjy/library/R$styleable;->RippleBackground_rb_radius:I

    invoke-virtual {p0}, Lcom/skyfishjy/library/RippleBackground;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/skyfishjy/library/R$dimen;->rippleRadius:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/skyfishjy/library/RippleBackground;->rippleRadius:F

    .line 69
    sget v1, Lcom/skyfishjy/library/R$styleable;->RippleBackground_rb_duration:I

    const/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/skyfishjy/library/RippleBackground;->rippleDurationTime:I

    .line 70
    sget v1, Lcom/skyfishjy/library/R$styleable;->RippleBackground_rb_rippleAmount:I

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/skyfishjy/library/RippleBackground;->rippleAmount:I

    .line 71
    sget v1, Lcom/skyfishjy/library/R$styleable;->RippleBackground_rb_scale:I

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/skyfishjy/library/RippleBackground;->rippleScale:F

    .line 72
    sget v1, Lcom/skyfishjy/library/R$styleable;->RippleBackground_rb_type:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/skyfishjy/library/RippleBackground;->rippleType:I

    .line 73
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 75
    iget v1, p0, Lcom/skyfishjy/library/RippleBackground;->rippleDurationTime:I

    iget v3, p0, Lcom/skyfishjy/library/RippleBackground;->rippleAmount:I

    div-int/2addr v1, v3

    iput v1, p0, Lcom/skyfishjy/library/RippleBackground;->rippleDelay:I

    .line 77
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/skyfishjy/library/RippleBackground;->paint:Landroid/graphics/Paint;

    .line 78
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 79
    iget v1, p0, Lcom/skyfishjy/library/RippleBackground;->rippleType:I

    if-nez v1, :cond_1

    .line 80
    const/4 v1, 0x0

    iput v1, p0, Lcom/skyfishjy/library/RippleBackground;->rippleStrokeWidth:F

    .line 81
    iget-object v1, p0, Lcom/skyfishjy/library/RippleBackground;->paint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_0

    .line 83
    :cond_1
    iget-object v1, p0, Lcom/skyfishjy/library/RippleBackground;->paint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 84
    :goto_0
    iget-object v1, p0, Lcom/skyfishjy/library/RippleBackground;->paint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/skyfishjy/library/RippleBackground;->rippleColor:I

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 86
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v4, p0, Lcom/skyfishjy/library/RippleBackground;->rippleRadius:F

    iget v5, p0, Lcom/skyfishjy/library/RippleBackground;->rippleStrokeWidth:F

    add-float v6, v4, v5

    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    add-float/2addr v4, v5

    mul-float/2addr v4, v7

    float-to-int v4, v4

    invoke-direct {v1, v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v1, p0, Lcom/skyfishjy/library/RippleBackground;->rippleParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 87
    const/16 v4, 0xd

    const/4 v5, -0x1

    invoke-virtual {v1, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 89
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/skyfishjy/library/RippleBackground;->animatorSet:Landroid/animation/AnimatorSet;

    .line 90
    iget v4, p0, Lcom/skyfishjy/library/RippleBackground;->rippleDurationTime:I

    int-to-long v6, v4

    invoke-virtual {v1, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 91
    iget-object v1, p0, Lcom/skyfishjy/library/RippleBackground;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v4, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 92
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/skyfishjy/library/RippleBackground;->animatorList:Ljava/util/ArrayList;

    .line 94
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v4, p0, Lcom/skyfishjy/library/RippleBackground;->rippleAmount:I

    if-ge v1, v4, :cond_2

    .line 95
    new-instance v4, Lcom/skyfishjy/library/RippleBackground$RippleView;

    invoke-virtual {p0}, Lcom/skyfishjy/library/RippleBackground;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, p0, v6}, Lcom/skyfishjy/library/RippleBackground$RippleView;-><init>(Lcom/skyfishjy/library/RippleBackground;Landroid/content/Context;)V

    .line 96
    .local v4, "rippleView":Lcom/skyfishjy/library/RippleBackground$RippleView;
    iget-object v6, p0, Lcom/skyfishjy/library/RippleBackground;->rippleParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v4, v6}, Lcom/skyfishjy/library/RippleBackground;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    iget-object v6, p0, Lcom/skyfishjy/library/RippleBackground;->rippleViewList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    const/4 v6, 0x2

    new-array v7, v6, [F

    const/high16 v8, 0x3f800000    # 1.0f

    aput v8, v7, v2

    iget v9, p0, Lcom/skyfishjy/library/RippleBackground;->rippleScale:F

    aput v9, v7, v3

    const-string v9, "ScaleX"

    invoke-static {v4, v9, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 99
    .local v7, "scaleXAnimator":Landroid/animation/ObjectAnimator;
    invoke-virtual {v7, v5}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 100
    invoke-virtual {v7, v3}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 101
    iget v9, p0, Lcom/skyfishjy/library/RippleBackground;->rippleDelay:I

    mul-int/2addr v9, v1

    int-to-long v9, v9

    invoke-virtual {v7, v9, v10}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 102
    iget-object v9, p0, Lcom/skyfishjy/library/RippleBackground;->animatorList:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    new-array v9, v6, [F

    aput v8, v9, v2

    iget v8, p0, Lcom/skyfishjy/library/RippleBackground;->rippleScale:F

    aput v8, v9, v3

    const-string v8, "ScaleY"

    invoke-static {v4, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 104
    .local v8, "scaleYAnimator":Landroid/animation/ObjectAnimator;
    invoke-virtual {v8, v5}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 105
    invoke-virtual {v8, v3}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 106
    iget v9, p0, Lcom/skyfishjy/library/RippleBackground;->rippleDelay:I

    mul-int/2addr v9, v1

    int-to-long v9, v9

    invoke-virtual {v8, v9, v10}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 107
    iget-object v9, p0, Lcom/skyfishjy/library/RippleBackground;->animatorList:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    new-array v6, v6, [F

    fill-array-data v6, :array_0

    const-string v9, "Alpha"

    invoke-static {v4, v9, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 109
    .local v6, "alphaAnimator":Landroid/animation/ObjectAnimator;
    invoke-virtual {v6, v5}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 110
    invoke-virtual {v6, v3}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 111
    iget v9, p0, Lcom/skyfishjy/library/RippleBackground;->rippleDelay:I

    mul-int/2addr v9, v1

    int-to-long v9, v9

    invoke-virtual {v6, v9, v10}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 112
    iget-object v9, p0, Lcom/skyfishjy/library/RippleBackground;->animatorList:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    .end local v4    # "rippleView":Lcom/skyfishjy/library/RippleBackground$RippleView;
    .end local v6    # "alphaAnimator":Landroid/animation/ObjectAnimator;
    .end local v7    # "scaleXAnimator":Landroid/animation/ObjectAnimator;
    .end local v8    # "scaleYAnimator":Landroid/animation/ObjectAnimator;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 115
    .end local v1    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/skyfishjy/library/RippleBackground;->animatorSet:Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lcom/skyfishjy/library/RippleBackground;->animatorList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 116
    return-void

    .line 62
    .end local v0    # "typedArray":Landroid/content/res/TypedArray;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Attributes should be provided to this view,"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method


# virtual methods
.method public isRippleAnimationRunning()Z
    .locals 1

    .line 150
    iget-boolean v0, p0, Lcom/skyfishjy/library/RippleBackground;->animationRunning:Z

    return v0
.end method

.method public startRippleAnimation()V
    .locals 3

    .line 133
    invoke-virtual {p0}, Lcom/skyfishjy/library/RippleBackground;->isRippleAnimationRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/skyfishjy/library/RippleBackground;->rippleViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/skyfishjy/library/RippleBackground$RippleView;

    .line 135
    .local v1, "rippleView":Lcom/skyfishjy/library/RippleBackground$RippleView;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/skyfishjy/library/RippleBackground$RippleView;->setVisibility(I)V

    .line 136
    .end local v1    # "rippleView":Lcom/skyfishjy/library/RippleBackground$RippleView;
    goto :goto_0

    .line 137
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    iget-object v0, p0, Lcom/skyfishjy/library/RippleBackground;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/skyfishjy/library/RippleBackground;->animationRunning:Z

    .line 140
    :cond_1
    return-void
.end method

.method public stopRippleAnimation()V
    .locals 1

    .line 143
    invoke-virtual {p0}, Lcom/skyfishjy/library/RippleBackground;->isRippleAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/skyfishjy/library/RippleBackground;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 145
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/skyfishjy/library/RippleBackground;->animationRunning:Z

    .line 147
    :cond_0
    return-void
.end method
